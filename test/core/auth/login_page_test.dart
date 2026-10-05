import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
// riverpod 3 把 Override 挪到 misc 导出面（flutter_riverpod.dart 不再带它）。
import 'package:flutter_riverpod/misc.dart' show Override;

import 'package:lab_management_system_flutter/core/api/session_guard.dart';
import 'package:lab_management_system_flutter/core/auth/auth_controller.dart';
import 'package:lab_management_system_flutter/core/auth/auth_state.dart';
import 'package:lab_management_system_flutter/core/auth/login_page.dart';
import 'package:lab_management_system_flutter/core/auth/providers.dart';

import '../../fakes/in_memory_token_store.dart';

const _okBody = <String, dynamic>{
  'token': 'jwt-access-1',
  'refreshToken': 'jwt-refresh-1',
  'user': {'id': 'u-1', 'username': 'alice'},
  'tenants': <dynamic>[],
};

/// RF#1 UI 侧用的提交中桩：直接以 AuthSubmitting 为 build 态，零时序竞争。
class _SubmittingStubController extends AuthController {
  @override
  AuthState build() => const AuthSubmitting();
}

(Dio, DioAdapter) _loginRig() {
  final dio = Dio(BaseOptions(baseUrl: 'http://localhost:5201'));
  final adapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
  return (dio, adapter);
}

Future<void> pumpLogin(
  WidgetTester tester,
  Dio dio, [
  List<Override> extraOverrides = const [],
]) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        dioProvider.overrideWithValue(dio),
        tokenStoreProvider.overrideWithValue(InMemoryTokenStore()),
        sessionGuardProvider.overrideWithValue(SessionGuard()),
        ...extraOverrides,
      ],
      child: const MaterialApp(home: LoginPage()),
    ),
  );
  await tester.pumpAndSettle();
}

// —— brief Step 1 只给了装配 rig；下方用例为补齐门禁三件套（analyze 0 /
//    unused_element / AC-1 UI 侧防抖证明）的最小集，rig 逐字未动。 ——

void main() {
  testWidgets('anonymous 初始渲染：两输入框 + 登录按钮（可点）', (tester) async {
    final (dio, _) = _loginRig();
    await pumpLogin(tester, dio);

    expect(find.text('用户名'), findsOneWidget);
    expect(find.text('密码'), findsOneWidget);
    expect(find.text('登录'), findsOneWidget);
    final button = tester.widget<FilledButton>(find.byType(FilledButton));
    expect(button.onPressed, isNotNull);
  });

  testWidgets('submitting：按钮禁用改「登录中…」，输入框禁用（AC-1 UI 侧防抖）', (tester) async {
    final (dio, _) = _loginRig();
    await pumpLogin(tester, dio, [
      authControllerProvider.overrideWith(_SubmittingStubController.new),
    ]);

    expect(find.text('登录中…'), findsOneWidget);
    final button = tester.widget<FilledButton>(find.byType(FilledButton));
    expect(button.onPressed, isNull);
    final field = tester.widget<TextField>(find.byType(TextField).first);
    expect(field.enabled, isFalse);
  });

  testWidgets('401 错凭据 → failed 文案上屏', (tester) async {
    final (dio, adapter) = _loginRig();
    adapter.onPost(
      '/api/auth/native-login',
      (server) => server.reply(401, {
        'code': 'INVALID_CREDENTIALS',
        'message': '用户名或密码错误',
      }),
    );
    await pumpLogin(tester, dio);

    await tester.enterText(find.byType(TextField).first, 'alice');
    await tester.enterText(find.byType(TextField).last, 'bad');
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();

    expect(find.text('用户名或密码错误'), findsOneWidget);
  });

  testWidgets('登录成功：走真流程到 Authed（displayName 回退 username）', (tester) async {
    final (dio, adapter) = _loginRig();
    adapter.onPost(
      '/api/auth/native-login',
      (server) => server.reply(200, _okBody),
    );
    await pumpLogin(tester, dio);

    await tester.enterText(find.byType(TextField).first, 'alice');
    await tester.enterText(find.byType(TextField).last, 'dev123456');
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();

    final container = ProviderScope.containerOf(
      tester.element(find.byType(LoginPage)),
    );
    expect(
      container.read(authControllerProvider),
      const Authed(userId: 'u-1', displayName: 'alice'),
    );
  });
}
