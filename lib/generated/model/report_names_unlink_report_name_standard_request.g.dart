// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_names_unlink_report_name_standard_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNamesUnlinkReportNameStandardRequest
    extends ReportNamesUnlinkReportNameStandardRequest {
  @override
  final String reportNameCode;
  @override
  final String inspectionStandardCode;
  @override
  final InspectionStandardRole role;

  factory _$ReportNamesUnlinkReportNameStandardRequest([
    void Function(ReportNamesUnlinkReportNameStandardRequestBuilder)? updates,
  ]) => (ReportNamesUnlinkReportNameStandardRequestBuilder()..update(updates))
      ._build();

  _$ReportNamesUnlinkReportNameStandardRequest._({
    required this.reportNameCode,
    required this.inspectionStandardCode,
    required this.role,
  }) : super._();
  @override
  ReportNamesUnlinkReportNameStandardRequest rebuild(
    void Function(ReportNamesUnlinkReportNameStandardRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNamesUnlinkReportNameStandardRequestBuilder toBuilder() =>
      ReportNamesUnlinkReportNameStandardRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNamesUnlinkReportNameStandardRequest &&
        reportNameCode == other.reportNameCode &&
        inspectionStandardCode == other.inspectionStandardCode &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, inspectionStandardCode.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ReportNamesUnlinkReportNameStandardRequest',
          )
          ..add('reportNameCode', reportNameCode)
          ..add('inspectionStandardCode', inspectionStandardCode)
          ..add('role', role))
        .toString();
  }
}

class ReportNamesUnlinkReportNameStandardRequestBuilder
    implements
        Builder<
          ReportNamesUnlinkReportNameStandardRequest,
          ReportNamesUnlinkReportNameStandardRequestBuilder
        > {
  _$ReportNamesUnlinkReportNameStandardRequest? _$v;

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

  ReportNamesUnlinkReportNameStandardRequestBuilder() {
    ReportNamesUnlinkReportNameStandardRequest._defaults(this);
  }

  ReportNamesUnlinkReportNameStandardRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportNameCode = $v.reportNameCode;
      _inspectionStandardCode = $v.inspectionStandardCode;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportNamesUnlinkReportNameStandardRequest other) {
    _$v = other as _$ReportNamesUnlinkReportNameStandardRequest;
  }

  @override
  void update(
    void Function(ReportNamesUnlinkReportNameStandardRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ReportNamesUnlinkReportNameStandardRequest build() => _build();

  _$ReportNamesUnlinkReportNameStandardRequest _build() {
    final _$result =
        _$v ??
        _$ReportNamesUnlinkReportNameStandardRequest._(
          reportNameCode: BuiltValueNullFieldError.checkNotNull(
            reportNameCode,
            r'ReportNamesUnlinkReportNameStandardRequest',
            'reportNameCode',
          ),
          inspectionStandardCode: BuiltValueNullFieldError.checkNotNull(
            inspectionStandardCode,
            r'ReportNamesUnlinkReportNameStandardRequest',
            'inspectionStandardCode',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'ReportNamesUnlinkReportNameStandardRequest',
            'role',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
