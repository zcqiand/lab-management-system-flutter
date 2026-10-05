// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_tenant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MyTenant extends MyTenant {
  @override
  final String tenantId;
  @override
  final String code;
  @override
  final String name;
  @override
  final BuiltList<String> roleIds;

  factory _$MyTenant([void Function(MyTenantBuilder)? updates]) =>
      (MyTenantBuilder()..update(updates))._build();

  _$MyTenant._({
    required this.tenantId,
    required this.code,
    required this.name,
    required this.roleIds,
  }) : super._();
  @override
  MyTenant rebuild(void Function(MyTenantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyTenantBuilder toBuilder() => MyTenantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyTenant &&
        tenantId == other.tenantId &&
        code == other.code &&
        name == other.name &&
        roleIds == other.roleIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, roleIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyTenant')
          ..add('tenantId', tenantId)
          ..add('code', code)
          ..add('name', name)
          ..add('roleIds', roleIds))
        .toString();
  }
}

class MyTenantBuilder implements Builder<MyTenant, MyTenantBuilder> {
  _$MyTenant? _$v;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _roleIds;
  ListBuilder<String> get roleIds => _$this._roleIds ??= ListBuilder<String>();
  set roleIds(ListBuilder<String>? roleIds) => _$this._roleIds = roleIds;

  MyTenantBuilder() {
    MyTenant._defaults(this);
  }

  MyTenantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId;
      _code = $v.code;
      _name = $v.name;
      _roleIds = $v.roleIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyTenant other) {
    _$v = other as _$MyTenant;
  }

  @override
  void update(void Function(MyTenantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyTenant build() => _build();

  _$MyTenant _build() {
    _$MyTenant _$result;
    try {
      _$result =
          _$v ??
          _$MyTenant._(
            tenantId: BuiltValueNullFieldError.checkNotNull(
              tenantId,
              r'MyTenant',
              'tenantId',
            ),
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'MyTenant',
              'code',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'MyTenant',
              'name',
            ),
            roleIds: roleIds.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roleIds';
        roleIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MyTenant',
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
