// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_report_name_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectReportNameLink extends ObjectReportNameLink {
  @override
  final String inspectionObjectCode;
  @override
  final String reportNameCode;
  @override
  final String? remark;

  factory _$ObjectReportNameLink([
    void Function(ObjectReportNameLinkBuilder)? updates,
  ]) => (ObjectReportNameLinkBuilder()..update(updates))._build();

  _$ObjectReportNameLink._({
    required this.inspectionObjectCode,
    required this.reportNameCode,
    this.remark,
  }) : super._();
  @override
  ObjectReportNameLink rebuild(
    void Function(ObjectReportNameLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ObjectReportNameLinkBuilder toBuilder() =>
      ObjectReportNameLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectReportNameLink &&
        inspectionObjectCode == other.inspectionObjectCode &&
        reportNameCode == other.reportNameCode &&
        remark == other.remark;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectReportNameLink')
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('reportNameCode', reportNameCode)
          ..add('remark', remark))
        .toString();
  }
}

class ObjectReportNameLinkBuilder
    implements Builder<ObjectReportNameLink, ObjectReportNameLinkBuilder> {
  _$ObjectReportNameLink? _$v;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _reportNameCode;
  String? get reportNameCode => _$this._reportNameCode;
  set reportNameCode(String? reportNameCode) =>
      _$this._reportNameCode = reportNameCode;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  ObjectReportNameLinkBuilder() {
    ObjectReportNameLink._defaults(this);
  }

  ObjectReportNameLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _reportNameCode = $v.reportNameCode;
      _remark = $v.remark;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectReportNameLink other) {
    _$v = other as _$ObjectReportNameLink;
  }

  @override
  void update(void Function(ObjectReportNameLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectReportNameLink build() => _build();

  _$ObjectReportNameLink _build() {
    final _$result =
        _$v ??
        _$ObjectReportNameLink._(
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'ObjectReportNameLink',
            'inspectionObjectCode',
          ),
          reportNameCode: BuiltValueNullFieldError.checkNotNull(
            reportNameCode,
            r'ObjectReportNameLink',
            'reportNameCode',
          ),
          remark: remark,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
