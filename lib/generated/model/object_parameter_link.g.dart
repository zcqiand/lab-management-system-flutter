// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_parameter_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectParameterLink extends ObjectParameterLink {
  @override
  final String inspectionObjectCode;
  @override
  final String inspectionParameterCode;
  @override
  final QualificationLevel qualificationLevel;
  @override
  final int? sourcePage;
  @override
  final String? remark;

  factory _$ObjectParameterLink([
    void Function(ObjectParameterLinkBuilder)? updates,
  ]) => (ObjectParameterLinkBuilder()..update(updates))._build();

  _$ObjectParameterLink._({
    required this.inspectionObjectCode,
    required this.inspectionParameterCode,
    required this.qualificationLevel,
    this.sourcePage,
    this.remark,
  }) : super._();
  @override
  ObjectParameterLink rebuild(
    void Function(ObjectParameterLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ObjectParameterLinkBuilder toBuilder() =>
      ObjectParameterLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectParameterLink &&
        inspectionObjectCode == other.inspectionObjectCode &&
        inspectionParameterCode == other.inspectionParameterCode &&
        qualificationLevel == other.qualificationLevel &&
        sourcePage == other.sourcePage &&
        remark == other.remark;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jc(_$hash, qualificationLevel.hashCode);
    _$hash = $jc(_$hash, sourcePage.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectParameterLink')
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('inspectionParameterCode', inspectionParameterCode)
          ..add('qualificationLevel', qualificationLevel)
          ..add('sourcePage', sourcePage)
          ..add('remark', remark))
        .toString();
  }
}

class ObjectParameterLinkBuilder
    implements Builder<ObjectParameterLink, ObjectParameterLinkBuilder> {
  _$ObjectParameterLink? _$v;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

  QualificationLevel? _qualificationLevel;
  QualificationLevel? get qualificationLevel => _$this._qualificationLevel;
  set qualificationLevel(QualificationLevel? qualificationLevel) =>
      _$this._qualificationLevel = qualificationLevel;

  int? _sourcePage;
  int? get sourcePage => _$this._sourcePage;
  set sourcePage(int? sourcePage) => _$this._sourcePage = sourcePage;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  ObjectParameterLinkBuilder() {
    ObjectParameterLink._defaults(this);
  }

  ObjectParameterLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _inspectionParameterCode = $v.inspectionParameterCode;
      _qualificationLevel = $v.qualificationLevel;
      _sourcePage = $v.sourcePage;
      _remark = $v.remark;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectParameterLink other) {
    _$v = other as _$ObjectParameterLink;
  }

  @override
  void update(void Function(ObjectParameterLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectParameterLink build() => _build();

  _$ObjectParameterLink _build() {
    final _$result =
        _$v ??
        _$ObjectParameterLink._(
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'ObjectParameterLink',
            'inspectionObjectCode',
          ),
          inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
            inspectionParameterCode,
            r'ObjectParameterLink',
            'inspectionParameterCode',
          ),
          qualificationLevel: BuiltValueNullFieldError.checkNotNull(
            qualificationLevel,
            r'ObjectParameterLink',
            'qualificationLevel',
          ),
          sourcePage: sourcePage,
          remark: remark,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
