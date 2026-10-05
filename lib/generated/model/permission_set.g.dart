// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionSet extends PermissionSet {
  @override
  final BuiltList<String> permissions;

  factory _$PermissionSet([void Function(PermissionSetBuilder)? updates]) =>
      (PermissionSetBuilder()..update(updates))._build();

  _$PermissionSet._({required this.permissions}) : super._();
  @override
  PermissionSet rebuild(void Function(PermissionSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionSetBuilder toBuilder() => PermissionSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionSet && permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PermissionSet',
    )..add('permissions', permissions)).toString();
  }
}

class PermissionSetBuilder
    implements Builder<PermissionSet, PermissionSetBuilder> {
  _$PermissionSet? _$v;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  PermissionSetBuilder() {
    PermissionSet._defaults(this);
  }

  PermissionSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionSet other) {
    _$v = other as _$PermissionSet;
  }

  @override
  void update(void Function(PermissionSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionSet build() => _build();

  _$PermissionSet _build() {
    _$PermissionSet _$result;
    try {
      _$result = _$v ?? _$PermissionSet._(permissions: permissions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PermissionSet',
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
