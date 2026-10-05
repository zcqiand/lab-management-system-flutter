/// token 存储缝：生产绑 SecureTokenStore（flutter_secure_storage），
/// 测试绑内存 fake——mock-friendly 铁律的存储面落地（lab-swift TokenStoring 先例）。
abstract class TokenStore {
  /// 两键名常量：生产写入用，杜绝键名漂移。
  static const String accessKey = 'lab.accessToken';
  static const String refreshKey = 'lab.refreshToken';

  Future<String?> readAccessToken();
  Future<String?> readRefreshToken();

  /// refreshToken 可空（lab 契约 LoginResponse.refreshToken optional）：
  /// null 时只写 access 键、不动旧 refresh 值。
  Future<void> save({required String accessToken, String? refreshToken});
  Future<void> clear();
}
