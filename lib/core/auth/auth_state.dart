/// 认证状态机五态（sealed：穷尽 switch 无 default）。
sealed class AuthState {
  const AuthState();
}

/// 启动恢复中（初始态）：restore 完成才落 anonymous/authed。
class AuthRestoring extends AuthState {
  const AuthRestoring();
}

class AuthAnonymous extends AuthState {
  const AuthAnonymous();
}

/// 登录进行中（登出不经此态，Authed→Anonymous 直迁）：UI 据此禁用按钮、
/// 状态机拒绝并发 login。
class AuthSubmitting extends AuthState {
  const AuthSubmitting();
}

class Authed extends AuthState {
  const Authed({this.userId, this.displayName});

  /// restore 乐观式（M00.F01 不入 Phase 1，无 whoami）——两字段为空是合法态。
  final String? userId;
  final String? displayName;

  @override
  bool operator ==(Object other) =>
      other is Authed &&
      other.userId == userId &&
      other.displayName == displayName;

  @override
  int get hashCode => Object.hash(userId, displayName);
}

class AuthFailed extends AuthState {
  const AuthFailed(this.message);

  final String message;

  @override
  bool operator ==(Object other) =>
      other is AuthFailed && other.message == message;

  @override
  int get hashCode => message.hashCode;
}
