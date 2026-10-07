import 'package:lab_management_system_flutter/core/auth/sso_state_store.dart';

/// 测试专用内存 fake：state+redirectUri 落账缝的确定性实现。
class InMemorySsoStateStore implements SsoStateStore {
  ({String state, String redirectUri})? _pending;

  @override
  Future<({String state, String redirectUri})?> read() async => _pending;

  @override
  Future<void> save({
    required String state,
    required String redirectUri,
  }) async {
    _pending = (state: state, redirectUri: redirectUri);
  }

  @override
  Future<void> clear() async => _pending = null;
}
