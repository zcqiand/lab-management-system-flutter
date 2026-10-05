// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionObject extends InspectionObject {
  @override
  final String code;
  @override
  final String inspectionSpecialtyCode;
  @override
  final String sourceProjectNo;
  @override
  final String sourceProjectName;
  @override
  final String name;
  @override
  final bool isOptionalForQualification;
  @override
  final bool isOfficial;
  @override
  final bool enabled;
  @override
  final int sortOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$InspectionObject([
    void Function(InspectionObjectBuilder)? updates,
  ]) => (InspectionObjectBuilder()..update(updates))._build();

  _$InspectionObject._({
    required this.code,
    required this.inspectionSpecialtyCode,
    required this.sourceProjectNo,
    required this.sourceProjectName,
    required this.name,
    required this.isOptionalForQualification,
    required this.isOfficial,
    required this.enabled,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  InspectionObject rebuild(void Function(InspectionObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InspectionObjectBuilder toBuilder() =>
      InspectionObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionObject &&
        code == other.code &&
        inspectionSpecialtyCode == other.inspectionSpecialtyCode &&
        sourceProjectNo == other.sourceProjectNo &&
        sourceProjectName == other.sourceProjectName &&
        name == other.name &&
        isOptionalForQualification == other.isOptionalForQualification &&
        isOfficial == other.isOfficial &&
        enabled == other.enabled &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, inspectionSpecialtyCode.hashCode);
    _$hash = $jc(_$hash, sourceProjectNo.hashCode);
    _$hash = $jc(_$hash, sourceProjectName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isOptionalForQualification.hashCode);
    _$hash = $jc(_$hash, isOfficial.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectionObject')
          ..add('code', code)
          ..add('inspectionSpecialtyCode', inspectionSpecialtyCode)
          ..add('sourceProjectNo', sourceProjectNo)
          ..add('sourceProjectName', sourceProjectName)
          ..add('name', name)
          ..add('isOptionalForQualification', isOptionalForQualification)
          ..add('isOfficial', isOfficial)
          ..add('enabled', enabled)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class InspectionObjectBuilder
    implements Builder<InspectionObject, InspectionObjectBuilder> {
  _$InspectionObject? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _inspectionSpecialtyCode;
  String? get inspectionSpecialtyCode => _$this._inspectionSpecialtyCode;
  set inspectionSpecialtyCode(String? inspectionSpecialtyCode) =>
      _$this._inspectionSpecialtyCode = inspectionSpecialtyCode;

  String? _sourceProjectNo;
  String? get sourceProjectNo => _$this._sourceProjectNo;
  set sourceProjectNo(String? sourceProjectNo) =>
      _$this._sourceProjectNo = sourceProjectNo;

  String? _sourceProjectName;
  String? get sourceProjectName => _$this._sourceProjectName;
  set sourceProjectName(String? sourceProjectName) =>
      _$this._sourceProjectName = sourceProjectName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isOptionalForQualification;
  bool? get isOptionalForQualification => _$this._isOptionalForQualification;
  set isOptionalForQualification(bool? isOptionalForQualification) =>
      _$this._isOptionalForQualification = isOptionalForQualification;

  bool? _isOfficial;
  bool? get isOfficial => _$this._isOfficial;
  set isOfficial(bool? isOfficial) => _$this._isOfficial = isOfficial;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  InspectionObjectBuilder() {
    InspectionObject._defaults(this);
  }

  InspectionObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _inspectionSpecialtyCode = $v.inspectionSpecialtyCode;
      _sourceProjectNo = $v.sourceProjectNo;
      _sourceProjectName = $v.sourceProjectName;
      _name = $v.name;
      _isOptionalForQualification = $v.isOptionalForQualification;
      _isOfficial = $v.isOfficial;
      _enabled = $v.enabled;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionObject other) {
    _$v = other as _$InspectionObject;
  }

  @override
  void update(void Function(InspectionObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectionObject build() => _build();

  _$InspectionObject _build() {
    final _$result =
        _$v ??
        _$InspectionObject._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'InspectionObject',
            'code',
          ),
          inspectionSpecialtyCode: BuiltValueNullFieldError.checkNotNull(
            inspectionSpecialtyCode,
            r'InspectionObject',
            'inspectionSpecialtyCode',
          ),
          sourceProjectNo: BuiltValueNullFieldError.checkNotNull(
            sourceProjectNo,
            r'InspectionObject',
            'sourceProjectNo',
          ),
          sourceProjectName: BuiltValueNullFieldError.checkNotNull(
            sourceProjectName,
            r'InspectionObject',
            'sourceProjectName',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'InspectionObject',
            'name',
          ),
          isOptionalForQualification: BuiltValueNullFieldError.checkNotNull(
            isOptionalForQualification,
            r'InspectionObject',
            'isOptionalForQualification',
          ),
          isOfficial: BuiltValueNullFieldError.checkNotNull(
            isOfficial,
            r'InspectionObject',
            'isOfficial',
          ),
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'InspectionObject',
            'enabled',
          ),
          sortOrder: BuiltValueNullFieldError.checkNotNull(
            sortOrder,
            r'InspectionObject',
            'sortOrder',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'InspectionObject',
            'createdAt',
          ),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
            updatedAt,
            r'InspectionObject',
            'updatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
