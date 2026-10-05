// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frontend_bind_meta_frontend_bind_snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FrontendBindMetaFrontendBindSnapshot
    extends FrontendBindMetaFrontendBindSnapshot {
  @override
  final BackendRegistry registry;
  @override
  final AuthContext authContext;
  @override
  final TokenStorageKeys tokenKeys;

  factory _$FrontendBindMetaFrontendBindSnapshot([
    void Function(FrontendBindMetaFrontendBindSnapshotBuilder)? updates,
  ]) =>
      (FrontendBindMetaFrontendBindSnapshotBuilder()..update(updates))._build();

  _$FrontendBindMetaFrontendBindSnapshot._({
    required this.registry,
    required this.authContext,
    required this.tokenKeys,
  }) : super._();
  @override
  FrontendBindMetaFrontendBindSnapshot rebuild(
    void Function(FrontendBindMetaFrontendBindSnapshotBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FrontendBindMetaFrontendBindSnapshotBuilder toBuilder() =>
      FrontendBindMetaFrontendBindSnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FrontendBindMetaFrontendBindSnapshot &&
        registry == other.registry &&
        authContext == other.authContext &&
        tokenKeys == other.tokenKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, registry.hashCode);
    _$hash = $jc(_$hash, authContext.hashCode);
    _$hash = $jc(_$hash, tokenKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FrontendBindMetaFrontendBindSnapshot')
          ..add('registry', registry)
          ..add('authContext', authContext)
          ..add('tokenKeys', tokenKeys))
        .toString();
  }
}

class FrontendBindMetaFrontendBindSnapshotBuilder
    implements
        Builder<
          FrontendBindMetaFrontendBindSnapshot,
          FrontendBindMetaFrontendBindSnapshotBuilder
        > {
  _$FrontendBindMetaFrontendBindSnapshot? _$v;

  BackendRegistryBuilder? _registry;
  BackendRegistryBuilder get registry =>
      _$this._registry ??= BackendRegistryBuilder();
  set registry(BackendRegistryBuilder? registry) => _$this._registry = registry;

  AuthContextBuilder? _authContext;
  AuthContextBuilder get authContext =>
      _$this._authContext ??= AuthContextBuilder();
  set authContext(AuthContextBuilder? authContext) =>
      _$this._authContext = authContext;

  TokenStorageKeysBuilder? _tokenKeys;
  TokenStorageKeysBuilder get tokenKeys =>
      _$this._tokenKeys ??= TokenStorageKeysBuilder();
  set tokenKeys(TokenStorageKeysBuilder? tokenKeys) =>
      _$this._tokenKeys = tokenKeys;

  FrontendBindMetaFrontendBindSnapshotBuilder() {
    FrontendBindMetaFrontendBindSnapshot._defaults(this);
  }

  FrontendBindMetaFrontendBindSnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registry = $v.registry.toBuilder();
      _authContext = $v.authContext.toBuilder();
      _tokenKeys = $v.tokenKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FrontendBindMetaFrontendBindSnapshot other) {
    _$v = other as _$FrontendBindMetaFrontendBindSnapshot;
  }

  @override
  void update(
    void Function(FrontendBindMetaFrontendBindSnapshotBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  FrontendBindMetaFrontendBindSnapshot build() => _build();

  _$FrontendBindMetaFrontendBindSnapshot _build() {
    _$FrontendBindMetaFrontendBindSnapshot _$result;
    try {
      _$result =
          _$v ??
          _$FrontendBindMetaFrontendBindSnapshot._(
            registry: registry.build(),
            authContext: authContext.build(),
            tokenKeys: tokenKeys.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'registry';
        registry.build();
        _$failedField = 'authContext';
        authContext.build();
        _$failedField = 'tokenKeys';
        tokenKeys.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FrontendBindMetaFrontendBindSnapshot',
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
