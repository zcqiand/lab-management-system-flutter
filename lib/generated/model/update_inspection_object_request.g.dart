// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inspection_object_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateInspectionObjectRequest extends UpdateInspectionObjectRequest {
  @override
  final String? inspectionSpecialtyCode;
  @override
  final String? sourceProjectNo;
  @override
  final String? sourceProjectName;
  @override
  final String? name;
  @override
  final bool? isOptionalForQualification;
  @override
  final bool? isOfficial;
  @override
  final bool? enabled;
  @override
  final int? sortOrder;

  factory _$UpdateInspectionObjectRequest([
    void Function(UpdateInspectionObjectRequestBuilder)? updates,
  ]) => (UpdateInspectionObjectRequestBuilder()..update(updates))._build();

  _$UpdateInspectionObjectRequest._({
    this.inspectionSpecialtyCode,
    this.sourceProjectNo,
    this.sourceProjectName,
    this.name,
    this.isOptionalForQualification,
    this.isOfficial,
    this.enabled,
    this.sortOrder,
  }) : super._();
  @override
  UpdateInspectionObjectRequest rebuild(
    void Function(UpdateInspectionObjectRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateInspectionObjectRequestBuilder toBuilder() =>
      UpdateInspectionObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateInspectionObjectRequest &&
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
    return (newBuiltValueToStringHelper(r'UpdateInspectionObjectRequest')
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

class UpdateInspectionObjectRequestBuilder
    implements
        Builder<
          UpdateInspectionObjectRequest,
          UpdateInspectionObjectRequestBuilder
        > {
  _$UpdateInspectionObjectRequest? _$v;

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

  UpdateInspectionObjectRequestBuilder() {
    UpdateInspectionObjectRequest._defaults(this);
  }

  UpdateInspectionObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(UpdateInspectionObjectRequest other) {
    _$v = other as _$UpdateInspectionObjectRequest;
  }

  @override
  void update(void Function(UpdateInspectionObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateInspectionObjectRequest build() => _build();

  _$UpdateInspectionObjectRequest _build() {
    final _$result =
        _$v ??
        _$UpdateInspectionObjectRequest._(
          inspectionSpecialtyCode: inspectionSpecialtyCode,
          sourceProjectNo: sourceProjectNo,
          sourceProjectName: sourceProjectName,
          name: name,
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
