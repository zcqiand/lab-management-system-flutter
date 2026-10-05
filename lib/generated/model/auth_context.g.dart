// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthContext extends AuthContext {
  @override
  final AuthState state;

  factory _$AuthContext([void Function(AuthContextBuilder)? updates]) =>
      (AuthContextBuilder()..update(updates))._build();

  _$AuthContext._({required this.state}) : super._();
  @override
  AuthContext rebuild(void Function(AuthContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthContextBuilder toBuilder() => AuthContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthContext && state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AuthContext',
    )..add('state', state)).toString();
  }
}

class AuthContextBuilder implements Builder<AuthContext, AuthContextBuilder> {
  _$AuthContext? _$v;

  AuthStateBuilder? _state;
  AuthStateBuilder get state => _$this._state ??= AuthStateBuilder();
  set state(AuthStateBuilder? state) => _$this._state = state;

  AuthContextBuilder() {
    AuthContext._defaults(this);
  }

  AuthContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthContext other) {
    _$v = other as _$AuthContext;
  }

  @override
  void update(void Function(AuthContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthContext build() => _build();

  _$AuthContext _build() {
    _$AuthContext _$result;
    try {
      _$result = _$v ?? _$AuthContext._(state: state.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'state';
        state.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AuthContext',
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
