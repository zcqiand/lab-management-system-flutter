import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/api/auth_interceptor.dart';
import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';

import '../../fakes/in_memory_token_store.dart';
import '../../fakes/throwing_clear_token_store.dart';

(ProviderContainer, DioAdapter, InMemoryTokenStore, SessionGuard) _rig([
  InMemoryTokenStore? storeOverride,
]) {
  final store = storeOverride ?? InMemoryTokenStore();
  final guard = SessionGuard();
  final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
  // 401 缝走真拦截器（同 dioProvider 的生产形状）：override 掉 dioProvider 后
  // buildDio 不执行， Bare dio 无 AuthInterceptor 则探针 401 不会 fire guard。
  dio.interceptors.add(
    AuthInterceptor(readAccessToken: store.readAccessToken, guard: guard),
  );
  final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  final container = ProviderContainer(
    overrides: [
      dioProvider.overrideWithValue(dio),
      tokenStoreProvider.overrideWithValue(store),
      sessionGuardProvider.overrideWithValue(guard),
    ],
  );
  return (container, adapter, store, guard);
}

const _okBody = <String, dynamic>{
  'token': 'jwt-access-1',
  'refreshToken': 'jwt-refresh-1',
  'user': {'id': 'u-1', 'username': 'alice'},
  'tenants': <dynamic>[],
};

Future<void> _loginAndSettle(ProviderContainer c, DioAdapter a) async {
  a.onPost('/api/auth/native-login', (server) => server.reply(200, _okBody));
  c.read(authControllerProvider); // 挂载即触发 restore 微任务
  await pumpEventQueue(); // 等 restore 落 Anonymous
  await c.read(authControllerProvider.notifier).login('alice', 'dev123456');
}

void main() {
  test('受保护请求 401 → guard 接线生效：清 store + 回 anonymous（RF#3）', () async {
    // fn: M01.F05.I02
    final (container, adapter, store, _) = _rig();
    addTearDown(container.dispose);
    await _loginAndSettle(container, adapter);
    expect(
      container.read(authControllerProvider),
      const Authed(userId: 'u-1', displayName: 'alice'),
    );
    // Phase 1 无业务端点消费——探针路径任意非 /api/auth/ 即可（mock 拦截，无真请求）。
    adapter.onGet(
      '/api/protected/probe',
      (server) =>
          server.reply(401, {'code': 'UNAUTHORIZED', 'message': 'expired'}),
    );
    await expectLater(
      container.read(dioProvider).get<dynamic>('/api/protected/probe'),
      throwsA(isA<DioException>()),
    );
    await pumpEventQueue();
    expect(container.read(authControllerProvider), const AuthAnonymous());
    expect(await store.readAccessToken(), isNull);
  });

  test('登录成功→登出 204：本地清必达 + 回 anonymous', () async {
    final (container, adapter, store, _) = _rig();
    addTearDown(container.dispose);
    await _loginAndSettle(container, adapter);
    adapter.onPost('/api/auth/logout', (server) => server.reply(204, null));
    await container.read(authControllerProvider.notifier).logout();
    expect(container.read(authControllerProvider), const AuthAnonymous());
    expect(await store.readAccessToken(), isNull);
    expect(await store.readRefreshToken(), isNull);
  });

  test('登出服务端 500 仍本地清必达（RF#4）', () async {
    // fn: M01.F05.I04
    final (container, adapter, store, _) = _rig();
    addTearDown(container.dispose);
    await _loginAndSettle(container, adapter);
    adapter.onPost(
      '/api/auth/logout',
      (server) => server.reply(500, {'code': 'INTERNAL', 'message': 'boom'}),
    );
    await container.read(authControllerProvider.notifier).logout();
    expect(container.read(authControllerProvider), const AuthAnonymous());
    expect(await store.readAccessToken(), isNull);
    expect(await store.readRefreshToken(), isNull);
  });

  test('store.clear 抛错：logout/sessionExpired 仍迁移 Anonymous 且无未处理异常', () async {
    final (container, adapter, _, _) = _rig(ThrowingClearTokenStore());
    addTearDown(container.dispose);
    await _loginAndSettle(container, adapter); // save 可用（仅 clear 抛错），先到 Authed
    expect(
      container.read(authControllerProvider),
      const Authed(userId: 'u-1', displayName: 'alice'),
    );
    // UI 同款 fire-and-forget：logout 错误不得逃逸成 unhandled async error，
    // clear 抛错不阻断 Authed→Anonymous 迁移。
    final logoutFuture = container
        .read(authControllerProvider.notifier)
        .logout();
    await pumpEventQueue();
    expect(container.read(authControllerProvider), const AuthAnonymous());
    await expectLater(logoutFuture, completes);
    // sessionExpired（401 缝回调）同语义：clear 抛错仍迁移。
    final expiredFuture = container
        .read(authControllerProvider.notifier)
        .sessionExpired();
    await pumpEventQueue();
    expect(container.read(authControllerProvider), const AuthAnonymous());
    await expectLater(expiredFuture, completes);
  });
}
