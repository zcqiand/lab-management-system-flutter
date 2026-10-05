import 'package:lab_management_system_flutter/core/auth/token_store.dart';

/// 测试专用内存 fake：接口契约的确定性实现（键名语义同生产，实现为字段不引常量）。
class InMemoryTokenStore implements TokenStore {
  String? _accessToken;
  String? _refreshToken;

  /// 测试专用：构造「只剩 refreshToken」等非常规前置态（restore 分支用）。
  void debugOverwrite({String? accessToken, String? refreshToken}) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
  }

  @override
  Future<String?> readAccessToken() async => _accessToken;

  @override
  Future<String?> readRefreshToken() async => _refreshToken;

  @override
  Future<void> save({required String accessToken, String? refreshToken}) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
  }

  @override
  Future<void> clear() async {
    _accessToken = null;
    _refreshToken = null;
  }
}
