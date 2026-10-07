import 'dart:js_interop';

// SSO 整页跳转（REQ-2026-015）：浏览器 location.assign 跳 IdP authorizeUrl。
@JS('location')
external _JSLocation get _location;

extension type _JSLocation._(JSObject _) implements JSObject {
  external void assign(String url);
}

void redirectTo(String url) => _location.assign(url);
