import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// hide AuthState：generated barrel 另有同名契约模型（SSO 授权状态），
// 本文件 AuthState 一律指本仓 sealed 状态机。
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'auth_state.dart';
import 'providers.dart';
import 'token_store.dart';

/// 认证状态机（riverpod Notifier）。
/// - login：submitting 门（防并发）→ authNativeLogin → token 非空校验 → save → Authed
/// - 三分支错误映射（lab 契约无 423 锁定）：401 错凭据 / 无响应=网络不可达 /
///   其余带响应=登录失败；响应缺令牌单独文案（服务端契约破损，非传输问题）
/// - displayName 回退链 controller 一次解析：displayName 空串→username（RF#1）
/// - restore：accessToken 非空 → Authed（乐观式，无 whoami——M00.F01 不入 Phase 1）；空 → Anonymous
/// - sessionExpired：清 store（写侧故障不阻断）+ 回 anonymous（401 缝回调）
/// - logout：best-effort 通知（有 token 才调，body=accessToken）+ 本地清必达
class AuthController extends Notifier<AuthState> {
  late final AuthApi _api;
  late final TokenStore _store;

  @override
  AuthState build() {
    _api = ref.watch(authApiProvider);
    _store = ref.watch(tokenStoreProvider);

    final guard = ref.watch(sessionGuardProvider);
    guard.onUnauthorized = sessionExpired;
    ref.onDispose(() => guard.onUnauthorized = null);

    Future.microtask(() async {
      final token = await _store.readAccessToken();
      if (state is AuthRestoring) {
        state = (token != null && token.isNotEmpty)
            ? const Authed()
            : const AuthAnonymous();
      }
    });
    return const AuthRestoring();
  }

  /// 原生登录（M01.F05.I06）。submitting 期间再调用是 no-op（RF#1）。
  Future<void> login(String username, String password) async {
    if (state is AuthSubmitting) return;
    state = const AuthSubmitting();
    final request = LoginRequest(
      (b) => b
        ..username = username
        ..password = password,
    );
    try {
      final response = await _api.authNativeLogin(loginRequest: request);
      final body = response.data;
      final access = body?.token;
      if (body == null || access == null || access.isEmpty) {
        state = const AuthFailed('登录失败：服务端响应缺少令牌');
        return;
      }
      await _store.save(
        accessToken: access,
        refreshToken: body.refreshToken, // 契约可选，可空直存
      );
      final user = body.user;
      state = Authed(
        userId: user.id,
        displayName: (user.displayName?.isNotEmpty == true)
            ? user.displayName
            : user.username,
      );
    } on DioException catch (e) {
      state = AuthFailed(_message(e));
    } catch (_) {
      state = const AuthFailed('无法连接服务器');
    }
  }

  /// SSO 回跳换发成功收口（REQ-2026-015 M01.F05.I03）：login() 尾段同构
  /// （token 非空校验 → save → Authed；displayName 回退链 RF#1 一处解析）。
  /// body 由 SsoFlow 换发成功后投递；令牌缺失仍守门（防御式，同文案）。
  Future<void> adoptSsoLogin(LoginResponse body) async {
    // lab 契约 token 非空（可空面在 SsoFlow 换发处已把关）；这里守空串。
    if (body.token.isEmpty) {
      state = const AuthFailed('登录失败：服务端响应缺少令牌');
      return;
    }
    await _store.save(
      accessToken: body.token,
      refreshToken: body.refreshToken, // 契约可选，可空直存（login 同纪律）
    );
    final user = body.user;
    state = Authed(
      userId: user.id,
      displayName: (user.displayName?.isNotEmpty == true)
          ? user.displayName
          : user.username,
    );
  }

  /// 租户切换（REQ-2026-011 M00.F02.I01）：POST /auth/switch-tenant 换发
  /// token 对落 store（保持 Authed 不回登录页）；失败 return false 不动
  /// store。会话面（currentTenantId）由账户页重取 /auth/me。
  Future<bool> switchTenant(String tenantId) async {
    try {
      final resp = await _api.authSwitchTenant(
        switchTenantRequest: SwitchTenantRequest((b) => b..tenantId = tenantId),
      );
      final body = resp.data;
      final access = body?.token;
      if (body == null || access == null || access.isEmpty) return false;
      await _store.save(
        accessToken: access,
        refreshToken: body.refreshToken, // 契约可选，可空直存（login 同纪律）
      );
      return true;
    } on Exception {
      return false;
    }
  }

  /// 登出（M01.F05.I04）：服务端尽力通知，本地清空必达（有 token 才调服务端）。
  Future<void> logout() async {
    final access = await _store.readAccessToken();
    if (access != null && access.isNotEmpty) {
      try {
        await _api.authLogout(
          authLogoutRequest: AuthLogoutRequest((b) => b..token = access),
        );
      } catch (_) {
        // best-effort：服务端失败不阻断本地清理。
      }
    }
    try {
      await _store.clear();
    } catch (_) {
      // 存储写侧故障不阻断迁移（saas 终审 I-1 形态直带）：clear 成败不影响回 Anonymous。
    }
    state = const AuthAnonymous();
  }

  /// 401 缝回调（SessionGuard.fire）：清 store + 回 anonymous。
  Future<void> sessionExpired() async {
    try {
      await _store.clear();
    } catch (_) {
      // 同 logout：清失败也必须迁移。
    }
    if (state is! AuthAnonymous) state = const AuthAnonymous();
  }

  static String _message(DioException e) {
    // 三分支：无响应→「无法连接服务器」；401→「用户名或密码错误」；
    // 其余带响应→「登录失败，请稍后再试」（lab 契约无 423）。
    if (e.response == null) return '无法连接服务器';
    if (e.response?.statusCode == 401) return '用户名或密码错误';
    return '登录失败，请稍后再试';
  }
}

final authControllerProvider = NotifierProvider<AuthController, AuthState>(
  AuthController.new,
);
