// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_names_unlink_report_name_parameter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNamesUnlinkReportNameParameterRequest
    extends ReportNamesUnlinkReportNameParameterRequest {
  @override
  final String reportNameCode;
  @override
  final String inspectionParameterCode;

  factory _$ReportNamesUnlinkReportNameParameterRequest([
    void Function(ReportNamesUnlinkReportNameParameterRequestBuilder)? updates,
  ]) => (ReportNamesUnlinkReportNameParameterRequestBuilder()..update(updates))
      ._build();

  _$ReportNamesUnlinkReportNameParameterRequest._({
    required this.reportNameCode,
    required this.inspectionParameterCode,
  }) : super._();
  @override
  ReportNamesUnlinkReportNameParameterRequest rebuild(
    void Function(ReportNamesUnlinkReportNameParameterRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNamesUnlinkReportNameParameterRequestBuilder toBuilder() =>
      ReportNamesUnlinkReportNameParameterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNamesUnlinkReportNameParameterRequest &&
        reportNameCode == other.reportNameCode &&
        inspectionParameterCode == other.inspectionParameterCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ReportNamesUnlinkReportNameParameterRequest',
          )
          ..add('reportNameCode', reportNameCode)
          ..add('inspectionParameterCode', inspectionParameterCode))
        .toString();
  }
}

class ReportNamesUnlinkReportNameParameterRequestBuilder
    implements
        Builder<
          ReportNamesUnlinkReportNameParameterRequest,
          ReportNamesUnlinkReportNameParameterRequestBuilder
        > {
  _$ReportNamesUnlinkReportNameParameterRequest? _$v;

  String? _reportNameCode;
  String? get reportNameCode => _$this._reportNameCode;
  set reportNameCode(String? reportNameCode) =>
      _$this._reportNameCode = reportNameCode;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

  ReportNamesUnlinkReportNameParameterRequestBuilder() {
    ReportNamesUnlinkReportNameParameterRequest._defaults(this);
  }

  ReportNamesUnlinkReportNameParameterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportNameCode = $v.reportNameCode;
      _inspectionParameterCode = $v.inspectionParameterCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportNamesUnlinkReportNameParameterRequest other) {
    _$v = other as _$ReportNamesUnlinkReportNameParameterRequest;
  }

  @override
  void update(
    void Function(ReportNamesUnlinkReportNameParameterRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ReportNamesUnlinkReportNameParameterRequest build() => _build();

  _$ReportNamesUnlinkReportNameParameterRequest _build() {
    final _$result =
        _$v ??
        _$ReportNamesUnlinkReportNameParameterRequest._(
          reportNameCode: BuiltValueNullFieldError.checkNotNull(
            reportNameCode,
            r'ReportNamesUnlinkReportNameParameterRequest',
            'reportNameCode',
          ),
          inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
            inspectionParameterCode,
            r'ReportNamesUnlinkReportNameParameterRequest',
            'inspectionParameterCode',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
