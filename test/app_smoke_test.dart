import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:lab_management_system_flutter/core/auth/providers.dart';
import 'package:lab_management_system_flutter/core/config/app_config.dart';
import 'package:lab_management_system_flutter/main.dart';

import 'fakes/in_memory_token_store.dart';

void main() {
  group('AppConfig fail-fast', () {
    test('空 base URL 必须 throw（硬规则 §1）', () {
      expect(() => AppConfig.validateBaseUrl(''), throwsStateError);
    });

    test('非空 base URL 通过', () {
      expect(
        () => AppConfig.validateBaseUrl('http://localhost:5201'),
        returnsNormally,
      );
    });
  });

  testWidgets('App 壳可构建（anonymous → LoginPage）', (tester) async {
    // 裸 adapter 兜底防真实网络：壳用例零请求（restore 空存储→anonymous，
    // 不触 login 端点；受保护请求的拦截器接线归业务用例，R8①）。
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
    DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          dioProvider.overrideWithValue(dio),
          tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
        ],
        child: const LabFlutterApp(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('登录 — Lab 管理系统 Flutter 端'), findsOneWidget);
  });
}
