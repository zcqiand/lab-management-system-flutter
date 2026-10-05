// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_logout_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthLogoutRequest extends AuthLogoutRequest {
  @override
  final String token;

  factory _$AuthLogoutRequest([
    void Function(AuthLogoutRequestBuilder)? updates,
  ]) => (AuthLogoutRequestBuilder()..update(updates))._build();

  _$AuthLogoutRequest._({required this.token}) : super._();
  @override
  AuthLogoutRequest rebuild(void Function(AuthLogoutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLogoutRequestBuilder toBuilder() =>
      AuthLogoutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLogoutRequest && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AuthLogoutRequest',
    )..add('token', token)).toString();
  }
}

class AuthLogoutRequestBuilder
    implements Builder<AuthLogoutRequest, AuthLogoutRequestBuilder> {
  _$AuthLogoutRequest? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  AuthLogoutRequestBuilder() {
    AuthLogoutRequest._defaults(this);
  }

  AuthLogoutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLogoutRequest other) {
    _$v = other as _$AuthLogoutRequest;
  }

  @override
  void update(void Function(AuthLogoutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthLogoutRequest build() => _build();

  _$AuthLogoutRequest _build() {
    final _$result =
        _$v ??
        _$AuthLogoutRequest._(
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'AuthLogoutRequest',
            'token',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
