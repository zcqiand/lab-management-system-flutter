import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:lab_management_system_flutter/core/api/api_client.dart';
import 'package:lab_management_system_flutter/core/api/auth_interceptor.dart';
import 'package:lab_management_system_flutter/core/api/session_guard.dart';

import '../../fakes/in_memory_token_store.dart';

/// 头捕获探针：排在 AuthInterceptor 之后，onRequest 见到的是注入后的头
///（brief 注：捕获实现细节由实现者定，此处探 RequestOptions）。
class _HeaderProbe extends Interceptor {
  String? lastAuthHeader;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    lastAuthHeader = options.headers['Authorization'] as String?;
    handler.next(options);
  }
}

(Dio, SessionGuard, _HeaderProbe) _buildStack({
  required Future<String?> Function() readAccessToken,
  SessionGuard? guard,
}) {
  final probe = _HeaderProbe();
  final g = guard ?? SessionGuard();
  final dio = buildDio(
    baseUrl: 'http://localhost:5201',
    interceptor: AuthInterceptor(readAccessToken: readAccessToken, guard: g),
  )..interceptors.add(probe);
  return (dio, g, probe);
}

void main() {
  const snapshotPath = '/api/_frontend-bind/snapshot';

  group('AuthInterceptor', () {
    test('非空 token → Authorization Bearer 头', () async {
      final store = InMemoryTokenStore()..debugOverwrite(accessToken: 'tk1');
      final (dio, _, probe) = _buildStack(
        readAccessToken: store.readAccessToken,
      );
      final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
      adapter.onGet(
        snapshotPath,
        (request) => request.reply(200, {'ok': true}),
      );
      await dio.get<dynamic>(snapshotPath);
      expect(probe.lastAuthHeader, 'Bearer tk1');
    });

    test('无 token → 不注入 Authorization 头', () async {
      final store = InMemoryTokenStore();
      final (dio, _, probe) = _buildStack(
        readAccessToken: store.readAccessToken,
      );
      final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
      adapter.onGet(
        snapshotPath,
        (request) => request.reply(200, {'ok': true}),
      );
      await dio.get<dynamic>(snapshotPath);
      expect(probe.lastAuthHeader, isNull);
    });

    test('401 非 auth 路径 → guard.fire（fired 计数 1）', () async {
      final store = InMemoryTokenStore()..debugOverwrite(accessToken: 'tk1');
      final guard = SessionGuard();
      var fired = 0;
      guard.onUnauthorized = () => fired++;
      final (dio, _, _) = _buildStack(
        readAccessToken: store.readAccessToken,
        guard: guard,
      );
      final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
      adapter.onGet(
        snapshotPath,
        (request) => request.reply(401, {'message': 'expired'}),
      );
      await expectLater(
        dio.get<dynamic>(snapshotPath),
        throwsA(isA<DioException>()),
      );
      expect(fired, 1);
    });

    test('401 auth 路径（native-login）→ 不 fire（fired 0）', () async {
      final store = InMemoryTokenStore();
      final guard = SessionGuard();
      var fired = 0;
      guard.onUnauthorized = () => fired++;
      final (dio, _, _) = _buildStack(
        readAccessToken: store.readAccessToken,
        guard: guard,
      );
      final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
      adapter.onPost(
        '/api/auth/native-login',
        (request) => request.reply(401, {'message': 'bad credentials'}),
      );
      await expectLater(
        dio.post<dynamic>('/api/auth/native-login'),
        throwsA(isA<DioException>()),
      );
      expect(fired, 0);
    });

    test('readAccessToken 抛错 → 请求不挂死，无头继续', () async {
      Future<String?> boom() async => throw StateError('storage read failed');
      final (dio, _, probe) = _buildStack(readAccessToken: boom);
      final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
      adapter.onGet(
        snapshotPath,
        (request) => request.reply(200, {'ok': true}),
      );
      final res = await dio.get<dynamic>(snapshotPath);
      expect(res.data, {'ok': true});
      expect(probe.lastAuthHeader, isNull);
    });
  });
}
