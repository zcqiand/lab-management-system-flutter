// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sso_callback_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SsoCallbackRequest extends SsoCallbackRequest {
  @override
  final OAuthGrantType grantType;
  @override
  final String code;
  @override
  final String redirectUri;
  @override
  final String state;

  factory _$SsoCallbackRequest([
    void Function(SsoCallbackRequestBuilder)? updates,
  ]) => (SsoCallbackRequestBuilder()..update(updates))._build();

  _$SsoCallbackRequest._({
    required this.grantType,
    required this.code,
    required this.redirectUri,
    required this.state,
  }) : super._();
  @override
  SsoCallbackRequest rebuild(
    void Function(SsoCallbackRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SsoCallbackRequestBuilder toBuilder() =>
      SsoCallbackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SsoCallbackRequest &&
        grantType == other.grantType &&
        code == other.code &&
        redirectUri == other.redirectUri &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantType.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, redirectUri.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SsoCallbackRequest')
          ..add('grantType', grantType)
          ..add('code', code)
          ..add('redirectUri', redirectUri)
          ..add('state', state))
        .toString();
  }
}

class SsoCallbackRequestBuilder
    implements Builder<SsoCallbackRequest, SsoCallbackRequestBuilder> {
  _$SsoCallbackRequest? _$v;

  OAuthGrantType? _grantType;
  OAuthGrantType? get grantType => _$this._grantType;
  set grantType(OAuthGrantType? grantType) => _$this._grantType = grantType;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  SsoCallbackRequestBuilder() {
    SsoCallbackRequest._defaults(this);
  }

  SsoCallbackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantType = $v.grantType;
      _code = $v.code;
      _redirectUri = $v.redirectUri;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SsoCallbackRequest other) {
    _$v = other as _$SsoCallbackRequest;
  }

  @override
  void update(void Function(SsoCallbackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SsoCallbackRequest build() => _build();

  _$SsoCallbackRequest _build() {
    final _$result =
        _$v ??
        _$SsoCallbackRequest._(
          grantType: BuiltValueNullFieldError.checkNotNull(
            grantType,
            r'SsoCallbackRequest',
            'grantType',
          ),
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'SsoCallbackRequest',
            'code',
          ),
          redirectUri: BuiltValueNullFieldError.checkNotNull(
            redirectUri,
            r'SsoCallbackRequest',
            'redirectUri',
          ),
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'SsoCallbackRequest',
            'state',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
