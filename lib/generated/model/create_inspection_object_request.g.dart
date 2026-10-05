// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_inspection_object_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInspectionObjectRequest extends CreateInspectionObjectRequest {
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
  final bool? isOptionalForQualification;
  @override
  final bool? isOfficial;
  @override
  final bool? enabled;
  @override
  final int? sortOrder;

  factory _$CreateInspectionObjectRequest([
    void Function(CreateInspectionObjectRequestBuilder)? updates,
  ]) => (CreateInspectionObjectRequestBuilder()..update(updates))._build();

  _$CreateInspectionObjectRequest._({
    required this.code,
    required this.inspectionSpecialtyCode,
    required this.sourceProjectNo,
    required this.sourceProjectName,
    required this.name,
    this.isOptionalForQualification,
    this.isOfficial,
    this.enabled,
    this.sortOrder,
  }) : super._();
  @override
  CreateInspectionObjectRequest rebuild(
    void Function(CreateInspectionObjectRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateInspectionObjectRequestBuilder toBuilder() =>
      CreateInspectionObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInspectionObjectRequest &&
        code == other.code &&
        inspectionSpecialtyCode == other.inspectionSpecialtyCode &&
        sourceProjectNo == other.sourceProjectNo &&
        sourceProjectName == other.sourceProjectName &&
        name == other.name &&
        isOptionalForQualification == other.isOptionalForQualification &&
        isOfficial == other.isOfficial &&
        enabled == other.enabled &&
        sortOrder == other.sortOrder;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateInspectionObjectRequest')
          ..add('code', code)
          ..add('inspectionSpecialtyCode', inspectionSpecialtyCode)
          ..add('sourceProjectNo', sourceProjectNo)
          ..add('sourceProjectName', sourceProjectName)
          ..add('name', name)
          ..add('isOptionalForQualification', isOptionalForQualification)
          ..add('isOfficial', isOfficial)
          ..add('enabled', enabled)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class CreateInspectionObjectRequestBuilder
    implements
        Builder<
          CreateInspectionObjectRequest,
          CreateInspectionObjectRequestBuilder
        > {
  _$CreateInspectionObjectRequest? _$v;

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

  CreateInspectionObjectRequestBuilder() {
    CreateInspectionObjectRequest._defaults(this);
  }

  CreateInspectionObjectRequestBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInspectionObjectRequest other) {
    _$v = other as _$CreateInspectionObjectRequest;
  }

  @override
  void update(void Function(CreateInspectionObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInspectionObjectRequest build() => _build();

  _$CreateInspectionObjectRequest _build() {
    final _$result =
        _$v ??
        _$CreateInspectionObjectRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'CreateInspectionObjectRequest',
            'code',
          ),
          inspectionSpecialtyCode: BuiltValueNullFieldError.checkNotNull(
            inspectionSpecialtyCode,
            r'CreateInspectionObjectRequest',
            'inspectionSpecialtyCode',
          ),
          sourceProjectNo: BuiltValueNullFieldError.checkNotNull(
            sourceProjectNo,
            r'CreateInspectionObjectRequest',
            'sourceProjectNo',
          ),
          sourceProjectName: BuiltValueNullFieldError.checkNotNull(
            sourceProjectName,
            r'CreateInspectionObjectRequest',
            'sourceProjectName',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateInspectionObjectRequest',
            'name',
          ),
          isOptionalForQualification: isOptionalForQualification,
          isOfficial: isOfficial,
          enabled: enabled,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
