import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// SSO state 落账缝（REQ-2026-015）：发起时存 (state, redirectUri) 对，
/// 回跳时取出一比一校验后即清（一次性，防 CSRF/重放）。凭据要跨整页
/// 跳转存活，须持久化——react LoginPage 用 sessionStorage 同位；生产
/// flutter_secure_storage（web=localStorage 级，与 react 参照同级）。
abstract class SsoStateStore {
  /// 键名常量：生产写入用，杜绝键名漂移（TokenStore.accessKey 同款）。
  static const String stateKey = 'lab.sso.state';
  static const String redirectUriKey = 'lab.sso.redirectUri';

  Future<({String state, String redirectUri})?> read();

  Future<void> save({required String state, required String redirectUri});

  /// 无论回跳成败都清（一次性语义在缝内收口，调用方免记）。
  Future<void> clear();
}

/// 生产实现：双键落 flutter_secure_storage。
class SecureSsoStateStore implements SsoStateStore {
  SecureSsoStateStore([FlutterSecureStorage? storage])
    : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  @override
  Future<({String state, String redirectUri})?> read() async {
    final state = await _storage.read(key: SsoStateStore.stateKey);
    final redirectUri = await _storage.read(key: SsoStateStore.redirectUriKey);
    if (state == null || redirectUri == null) return null;
    return (state: state, redirectUri: redirectUri);
  }

  @override
  Future<void> save({
    required String state,
    required String redirectUri,
  }) async {
    await _storage.write(key: SsoStateStore.stateKey, value: state);
    await _storage.write(key: SsoStateStore.redirectUriKey, value: redirectUri);
  }

  @override
  Future<void> clear() async {
    await _storage.delete(key: SsoStateStore.stateKey);
    await _storage.delete(key: SsoStateStore.redirectUriKey);
  }
}
