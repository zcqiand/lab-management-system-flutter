// SSO 整页跳转缝（REQ-2026-015）：web 走 dart:js_interop location.assign，
// 其余平台（测试 VM）no-op stub。条件导出按 dart.library.js_interop 分派。
export 'sso_redirect_stub.dart'
    if (dart.library.js_interop) 'sso_redirect_web.dart';
