import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';

// hide AuthState：generated barrel 另有同名契约模型（本仓 sealed 状态机），
// 本文件 AuthState 一律指 auth_state.dart。
import 'package:lab_management_system_flutter/generated/lab_shared_generated.dart'
    hide AuthState;

import 'sso_state_store.dart';

/// 浏览器整页跳转缝：web=location.assign（sso_redirect_web），测试=stub。
typedef SsoNavigate = void Function(String url);

/// 换发成功收口缝：生产绑 AuthController.adoptSsoLogin（token 对落 store +
/// Authed 直进业务页），测试绑记录器。
typedef SsoAdopt = void Function(LoginResponse body);

/// SSO OAuth 2.0 授权码流（REQ-2026-015 M01.F05.I03，RFC 6749 §4.1 两阶段）：
///   阶段 1 发起——state 生成（32 字节密码学随机 base64url 无填充，一次性）
///   → authorize 四查询参 → 整页跳 IdP（saas）
///   阶段 2 回跳——登录页 initState 分流检测 Uri.base 携 code+state
///   → 验 state（与发起落账值比对，不匹配绝不打 exchange）
///   → callback（grant_type=authorization_code 四字段）换 lab 自家 JWT
///   → adopt 进 Authed。
/// state 生成/回跳解析为纯函数；网络与跳转走缝注入（swift SsoViewModel
/// 三缝同构）。账目（state 对）无论成败一次性清，防重放。
class SsoFlow {
  SsoFlow({
    required this.api,
    required this.stateStore,
    required this.onAdopt,
    required this.navigate,
  });

  final AuthApi api;
  final SsoStateStore stateStore;
  final SsoAdopt onAdopt;
  final SsoNavigate navigate;

  /// 32 字节密码学随机 → base64url 无填充（43 字符），每次新生成防重放
  /// （swift generateState 同款语义，Random.secure）。
  static String generateState() {
    final rng = Random.secure();
    final bytes = List<int>.generate(32, (_) => rng.nextInt(256));
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  /// 解析回跳 URL 的 code + state；缺任一或空不收（null）。
  static ({String code, String state})? parseCallback(Uri uri) {
    final code = uri.queryParameters['code'];
    final state = uri.queryParameters['state'];
    if (code == null || state == null || code.isEmpty || state.isEmpty) {
      return null;
    }
    return (code: code, state: state);
  }

  /// 回跳分流判据：Uri.base 携完整 code+state。
  static bool hasCallbackParams(Uri uri) => parseCallback(uri) != null;

  /// redirect_uri：lab 自己绝对地址的裸根 `/`（RFC 6749 §3.1.2 与 saas
  /// 白名单精确匹配，不带 query；react `${origin}/login` 同款，flutter web
  /// 入口为 `/`）。非 http(s) scheme（测试 VM file:、桌面壳）无 origin，
  /// 退裸根路径（react `typeof window` 平台守卫同款，非 env 兜底）。
  static String webRedirectUri(Uri base) {
    try {
      return '${base.origin}/';
    } on StateError {
      return '/';
    }
  }

  /// 阶段 1 发起。成功已 navigate 返回 null；失败返回错误文案（配置缺失
  /// fail-fast AC-3：不发 authorize 不跳转）。
  Future<String?> start({
    required String clientId,
    required String redirectUri,
  }) async {
    final client = clientId.trim();
    if (client.isEmpty) {
      return 'SSO 配置缺失：请以 --dart-define=SAAS_CLIENT_ID=<client_id> 注入';
    }
    final state = generateState();
    try {
      final resp = await api.authSsoAuthorize(
        responseType: OAuthResponseType.code,
        clientId: client,
        redirectUri: redirectUri,
        state: state,
      );
      final url = resp.data?.authorizeUrl;
      if (url == null || url.isEmpty) {
        return 'SSO 登录失败：authorize 响应缺少跳转地址';
      }
      // 先落账再跳转：回跳校验凭据必须先于浏览器导航存活。
      await stateStore.save(state: state, redirectUri: redirectUri);
      navigate(url);
      return null;
    } on Exception {
      return 'SSO 登录失败：无法连接服务器';
    }
  }

  /// 阶段 2 回跳。成功 adopt（token 对落 store + Authed）返回 null；失败
  /// 返回错误文案。账目一次性：无论成败即清。
  Future<String?> handleCallback(Uri uri) async {
    final cb = parseCallback(uri);
    if (cb == null) {
      return 'SSO 回跳缺少 code/state：请从登录页重新发起';
    }
    final pending = await stateStore.read();
    await stateStore.clear();
    // state 一次性校验（防 CSRF）：不一致绝不打 exchange（AC-2）。
    if (pending == null || pending.state != cb.state) {
      return 'state 校验失败：回跳 state 与发出值不一致，已拒绝换 token';
    }
    try {
      final resp = await api.authSsoCallback(
        ssoCallbackRequest: SsoCallbackRequest(
          (b) => b
            ..grantType = OAuthGrantType.authorizationCode
            ..code = cb.code
            ..redirectUri = pending.redirectUri
            ..state = cb.state,
        ),
      );
      final body = resp.data;
      final access = body?.token;
      if (body == null || access == null || access.isEmpty) {
        return 'SSO 登录失败：服务端响应缺少令牌';
      }
      onAdopt(body);
      return null;
    } on DioException {
      return 'SSO 登录失败：换 token 未通过，请重试';
    }
  }
}
