import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lab_management_system_flutter/core/config/app_config.dart';
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart';

import '../api/api_client.dart';
import '../api/auth_interceptor.dart';
import '../api/session_guard.dart';
import 'auth_controller.dart';
import 'secure_token_store.dart';
import 'sso_flow.dart';
import 'sso_redirect.dart';
import 'sso_state_store.dart';
import 'token_store.dart';

/// provider 图：测试经 ProviderScope(overrides:[...]) 整体替换
/// （dioProvider/tokenStoreProvider 必 override）。

final sessionGuardProvider = Provider<SessionGuard>((ref) => SessionGuard());

final tokenStoreProvider = Provider<TokenStore>((ref) => SecureTokenStore());

final dioProvider = Provider<Dio>((ref) {
  return buildDio(
    baseUrl: AppConfig.apiBaseUrl,
    interceptor: AuthInterceptor(
      readAccessToken: ref.watch(tokenStoreProvider).readAccessToken,
      guard: ref.watch(sessionGuardProvider),
    ),
  );
});

final authApiProvider = Provider<AuthApi>(
  (ref) => AuthApi(ref.watch(dioProvider), standardSerializers),
);

final ssoStateStoreProvider = Provider<SsoStateStore>(
  (ref) => SecureSsoStateStore(),
);

/// SSO 授权码流（REQ-2026-015）：换发收口直采 AuthController（token 对落
/// store + Authed），跳转 web=location.assign（测试 VM 自动落 stub）。
final ssoFlowProvider = Provider<SsoFlow>((ref) {
  return SsoFlow(
    api: ref.watch(authApiProvider),
    stateStore: ref.watch(ssoStateStoreProvider),
    onAdopt: (body) =>
        ref.read(authControllerProvider.notifier).adoptSsoLogin(body),
    navigate: redirectTo,
  );
});
