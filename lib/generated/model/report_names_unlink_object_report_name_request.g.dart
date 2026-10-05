// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_names_unlink_object_report_name_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNamesUnlinkObjectReportNameRequest
    extends ReportNamesUnlinkObjectReportNameRequest {
  @override
  final String inspectionObjectCode;
  @override
  final String reportNameCode;

  factory _$ReportNamesUnlinkObjectReportNameRequest([
    void Function(ReportNamesUnlinkObjectReportNameRequestBuilder)? updates,
  ]) => (ReportNamesUnlinkObjectReportNameRequestBuilder()..update(updates))
      ._build();

  _$ReportNamesUnlinkObjectReportNameRequest._({
    required this.inspectionObjectCode,
    required this.reportNameCode,
  }) : super._();
  @override
  ReportNamesUnlinkObjectReportNameRequest rebuild(
    void Function(ReportNamesUnlinkObjectReportNameRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNamesUnlinkObjectReportNameRequestBuilder toBuilder() =>
      ReportNamesUnlinkObjectReportNameRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNamesUnlinkObjectReportNameRequest &&
        inspectionObjectCode == other.inspectionObjectCode &&
        reportNameCode == other.reportNameCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ReportNamesUnlinkObjectReportNameRequest',
          )
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('reportNameCode', reportNameCode))
        .toString();
  }
}

class ReportNamesUnlinkObjectReportNameRequestBuilder
    implements
        Builder<
          ReportNamesUnlinkObjectReportNameRequest,
          ReportNamesUnlinkObjectReportNameRequestBuilder
        > {
  _$ReportNamesUnlinkObjectReportNameRequest? _$v;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _reportNameCode;
  String? get reportNameCode => _$this._reportNameCode;
  set reportNameCode(String? reportNameCode) =>
      _$this._reportNameCode = reportNameCode;

  ReportNamesUnlinkObjectReportNameRequestBuilder() {
    ReportNamesUnlinkObjectReportNameRequest._defaults(this);
  }

  ReportNamesUnlinkObjectReportNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _reportNameCode = $v.reportNameCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportNamesUnlinkObjectReportNameRequest other) {
    _$v = other as _$ReportNamesUnlinkObjectReportNameRequest;
  }

  @override
  void update(
    void Function(ReportNamesUnlinkObjectReportNameRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ReportNamesUnlinkObjectReportNameRequest build() => _build();

  _$ReportNamesUnlinkObjectReportNameRequest _build() {
    final _$result =
        _$v ??
        _$ReportNamesUnlinkObjectReportNameRequest._(
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'ReportNamesUnlinkObjectReportNameRequest',
            'inspectionObjectCode',
          ),
          reportNameCode: BuiltValueNullFieldError.checkNotNull(
            reportNameCode,
            r'ReportNamesUnlinkObjectReportNameRequest',
            'reportNameCode',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
