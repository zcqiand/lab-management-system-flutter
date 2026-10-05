// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sso_redirect.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SsoRedirect extends SsoRedirect {
  @override
  final String authorizeUrl;
  @override
  final String state;

  factory _$SsoRedirect([void Function(SsoRedirectBuilder)? updates]) =>
      (SsoRedirectBuilder()..update(updates))._build();

  _$SsoRedirect._({required this.authorizeUrl, required this.state})
    : super._();
  @override
  SsoRedirect rebuild(void Function(SsoRedirectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SsoRedirectBuilder toBuilder() => SsoRedirectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SsoRedirect &&
        authorizeUrl == other.authorizeUrl &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizeUrl.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SsoRedirect')
          ..add('authorizeUrl', authorizeUrl)
          ..add('state', state))
        .toString();
  }
}

class SsoRedirectBuilder implements Builder<SsoRedirect, SsoRedirectBuilder> {
  _$SsoRedirect? _$v;

  String? _authorizeUrl;
  String? get authorizeUrl => _$this._authorizeUrl;
  set authorizeUrl(String? authorizeUrl) => _$this._authorizeUrl = authorizeUrl;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  SsoRedirectBuilder() {
    SsoRedirect._defaults(this);
  }

  SsoRedirectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizeUrl = $v.authorizeUrl;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SsoRedirect other) {
    _$v = other as _$SsoRedirect;
  }

  @override
  void update(void Function(SsoRedirectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SsoRedirect build() => _build();

  _$SsoRedirect _build() {
    final _$result =
        _$v ??
        _$SsoRedirect._(
          authorizeUrl: BuiltValueNullFieldError.checkNotNull(
            authorizeUrl,
            r'SsoRedirect',
            'authorizeUrl',
          ),
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'SsoRedirect',
            'state',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
