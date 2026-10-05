// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_name_parameter_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNameParameterLink extends ReportNameParameterLink {
  @override
  final String reportNameCode;
  @override
  final String inspectionParameterCode;
  @override
  final String? remark;

  factory _$ReportNameParameterLink([
    void Function(ReportNameParameterLinkBuilder)? updates,
  ]) => (ReportNameParameterLinkBuilder()..update(updates))._build();

  _$ReportNameParameterLink._({
    required this.reportNameCode,
    required this.inspectionParameterCode,
    this.remark,
  }) : super._();
  @override
  ReportNameParameterLink rebuild(
    void Function(ReportNameParameterLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNameParameterLinkBuilder toBuilder() =>
      ReportNameParameterLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNameParameterLink &&
        reportNameCode == other.reportNameCode &&
        inspectionParameterCode == other.inspectionParameterCode &&
        remark == other.remark;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportNameParameterLink')
          ..add('reportNameCode', reportNameCode)
          ..add('inspectionParameterCode', inspectionParameterCode)
          ..add('remark', remark))
        .toString();
  }
}

class ReportNameParameterLinkBuilder
    implements
        Builder<ReportNameParameterLink, ReportNameParameterLinkBuilder> {
  _$ReportNameParameterLink? _$v;

  String? _reportNameCode;
  String? get reportNameCode => _$this._reportNameCode;
  set reportNameCode(String? reportNameCode) =>
      _$this._reportNameCode = reportNameCode;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  ReportNameParameterLinkBuilder() {
    ReportNameParameterLink._defaults(this);
  }

  ReportNameParameterLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportNameCode = $v.reportNameCode;
      _inspectionParameterCode = $v.inspectionParameterCode;
      _remark = $v.remark;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportNameParameterLink other) {
    _$v = other as _$ReportNameParameterLink;
  }

  @override
  void update(void Function(ReportNameParameterLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportNameParameterLink build() => _build();

  _$ReportNameParameterLink _build() {
    final _$result =
        _$v ??
        _$ReportNameParameterLink._(
          reportNameCode: BuiltValueNullFieldError.checkNotNull(
            reportNameCode,
            r'ReportNameParameterLink',
            'reportNameCode',
          ),
          inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
            inspectionParameterCode,
            r'ReportNameParameterLink',
            'inspectionParameterCode',
          ),
          remark: remark,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
