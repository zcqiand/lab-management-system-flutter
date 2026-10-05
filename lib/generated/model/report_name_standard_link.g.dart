// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_name_standard_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNameStandardLink extends ReportNameStandardLink {
  @override
  final String reportNameCode;
  @override
  final String inspectionStandardCode;
  @override
  final InspectionStandardRole role;
  @override
  final String? remark;

  factory _$ReportNameStandardLink([
    void Function(ReportNameStandardLinkBuilder)? updates,
  ]) => (ReportNameStandardLinkBuilder()..update(updates))._build();

  _$ReportNameStandardLink._({
    required this.reportNameCode,
    required this.inspectionStandardCode,
    required this.role,
    this.remark,
  }) : super._();
  @override
  ReportNameStandardLink rebuild(
    void Function(ReportNameStandardLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNameStandardLinkBuilder toBuilder() =>
      ReportNameStandardLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNameStandardLink &&
        reportNameCode == other.reportNameCode &&
        inspectionStandardCode == other.inspectionStandardCode &&
        role == other.role &&
        remark == other.remark;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, inspectionStandardCode.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportNameStandardLink')
          ..add('reportNameCode', reportNameCode)
          ..add('inspectionStandardCode', inspectionStandardCode)
          ..add('role', role)
          ..add('remark', remark))
        .toString();
  }
}

class ReportNameStandardLinkBuilder
    implements Builder<ReportNameStandardLink, ReportNameStandardLinkBuilder> {
  _$ReportNameStandardLink? _$v;

  String? _reportNameCode;
  String? get reportNameCode => _$this._reportNameCode;
  set reportNameCode(String? reportNameCode) =>
      _$this._reportNameCode = reportNameCode;

  String? _inspectionStandardCode;
  String? get inspectionStandardCode => _$this._inspectionStandardCode;
  set inspectionStandardCode(String? inspectionStandardCode) =>
      _$this._inspectionStandardCode = inspectionStandardCode;

  InspectionStandardRole? _role;
  InspectionStandardRole? get role => _$this._role;
  set role(InspectionStandardRole? role) => _$this._role = role;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  ReportNameStandardLinkBuilder() {
    ReportNameStandardLink._defaults(this);
  }

  ReportNameStandardLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportNameCode = $v.reportNameCode;
      _inspectionStandardCode = $v.inspectionStandardCode;
      _role = $v.role;
      _remark = $v.remark;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportNameStandardLink other) {
    _$v = other as _$ReportNameStandardLink;
  }

  @override
  void update(void Function(ReportNameStandardLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportNameStandardLink build() => _build();

  _$ReportNameStandardLink _build() {
    final _$result =
        _$v ??
        _$ReportNameStandardLink._(
          reportNameCode: BuiltValueNullFieldError.checkNotNull(
            reportNameCode,
            r'ReportNameStandardLink',
            'reportNameCode',
          ),
          inspectionStandardCode: BuiltValueNullFieldError.checkNotNull(
            inspectionStandardCode,
            r'ReportNameStandardLink',
            'inspectionStandardCode',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'ReportNameStandardLink',
            'role',
          ),
          remark: remark,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
