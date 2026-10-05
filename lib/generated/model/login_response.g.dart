// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginResponse extends LoginResponse {
  @override
  final String token;
  @override
  final String? refreshToken;
  @override
  final CurrentUser user;
  @override
  final BuiltList<MyTenant> tenants;

  factory _$LoginResponse([void Function(LoginResponseBuilder)? updates]) =>
      (LoginResponseBuilder()..update(updates))._build();

  _$LoginResponse._({
    required this.token,
    this.refreshToken,
    required this.user,
    required this.tenants,
  }) : super._();
  @override
  LoginResponse rebuild(void Function(LoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        user == other.user &&
        tenants == other.tenants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, tenants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginResponse')
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('user', user)
          ..add('tenants', tenants))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  CurrentUserBuilder? _user;
  CurrentUserBuilder get user => _$this._user ??= CurrentUserBuilder();
  set user(CurrentUserBuilder? user) => _$this._user = user;

  ListBuilder<MyTenant>? _tenants;
  ListBuilder<MyTenant> get tenants =>
      _$this._tenants ??= ListBuilder<MyTenant>();
  set tenants(ListBuilder<MyTenant>? tenants) => _$this._tenants = tenants;

  LoginResponseBuilder() {
    LoginResponse._defaults(this);
  }

  LoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _user = $v.user.toBuilder();
      _tenants = $v.tenants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void Function(LoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginResponse build() => _build();

  _$LoginResponse _build() {
    _$LoginResponse _$result;
    try {
      _$result =
          _$v ??
          _$LoginResponse._(
            token: BuiltValueNullFieldError.checkNotNull(
              token,
              r'LoginResponse',
              'token',
            ),
            refreshToken: refreshToken,
            user: user.build(),
            tenants: tenants.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'tenants';
        tenants.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LoginResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
