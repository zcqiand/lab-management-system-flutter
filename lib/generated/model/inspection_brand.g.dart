// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_brand.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionBrand extends InspectionBrand {
  @override
  final String code;
  @override
  final String tenantId;
  @override
  final String? inspectionObjectCode;
  @override
  final String name;
  @override
  final String? remark;
  @override
  final int sortOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$InspectionBrand([void Function(InspectionBrandBuilder)? updates]) =>
      (InspectionBrandBuilder()..update(updates))._build();

  _$InspectionBrand._({
    required this.code,
    required this.tenantId,
    this.inspectionObjectCode,
    required this.name,
    this.remark,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  InspectionBrand rebuild(void Function(InspectionBrandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InspectionBrandBuilder toBuilder() => InspectionBrandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionBrand &&
        code == other.code &&
        tenantId == other.tenantId &&
        inspectionObjectCode == other.inspectionObjectCode &&
        name == other.name &&
        remark == other.remark &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectionBrand')
          ..add('code', code)
          ..add('tenantId', tenantId)
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('name', name)
          ..add('remark', remark)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class InspectionBrandBuilder
    implements Builder<InspectionBrand, InspectionBrandBuilder> {
  _$InspectionBrand? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  InspectionBrandBuilder() {
    InspectionBrand._defaults(this);
  }

  InspectionBrandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _tenantId = $v.tenantId;
      _inspectionObjectCode = $v.inspectionObjectCode;
      _name = $v.name;
      _remark = $v.remark;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionBrand other) {
    _$v = other as _$InspectionBrand;
  }

  @override
  void update(void Function(InspectionBrandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectionBrand build() => _build();

  _$InspectionBrand _build() {
    final _$result =
        _$v ??
        _$InspectionBrand._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'InspectionBrand',
            'code',
          ),
          tenantId: BuiltValueNullFieldError.checkNotNull(
            tenantId,
            r'InspectionBrand',
            'tenantId',
          ),
          inspectionObjectCode: inspectionObjectCode,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'InspectionBrand',
            'name',
          ),
          remark: remark,
          sortOrder: BuiltValueNullFieldError.checkNotNull(
            sortOrder,
            r'InspectionBrand',
            'sortOrder',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'InspectionBrand',
            'createdAt',
          ),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
            updatedAt,
            r'InspectionBrand',
            'updatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
