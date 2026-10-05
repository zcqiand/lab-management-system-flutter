// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats_report_output_by_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStatsReportOutputByStatus
    extends DashboardStatsReportOutputByStatus {
  @override
  final int generated;
  @override
  final int pending;
  @override
  final int issued;

  factory _$DashboardStatsReportOutputByStatus([
    void Function(DashboardStatsReportOutputByStatusBuilder)? updates,
  ]) => (DashboardStatsReportOutputByStatusBuilder()..update(updates))._build();

  _$DashboardStatsReportOutputByStatus._({
    required this.generated,
    required this.pending,
    required this.issued,
  }) : super._();
  @override
  DashboardStatsReportOutputByStatus rebuild(
    void Function(DashboardStatsReportOutputByStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardStatsReportOutputByStatusBuilder toBuilder() =>
      DashboardStatsReportOutputByStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStatsReportOutputByStatus &&
        generated == other.generated &&
        pending == other.pending &&
        issued == other.issued;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generated.hashCode);
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, issued.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardStatsReportOutputByStatus')
          ..add('generated', generated)
          ..add('pending', pending)
          ..add('issued', issued))
        .toString();
  }
}

class DashboardStatsReportOutputByStatusBuilder
    implements
        Builder<
          DashboardStatsReportOutputByStatus,
          DashboardStatsReportOutputByStatusBuilder
        > {
  _$DashboardStatsReportOutputByStatus? _$v;

  int? _generated;
  int? get generated => _$this._generated;
  set generated(int? generated) => _$this._generated = generated;

  int? _pending;
  int? get pending => _$this._pending;
  set pending(int? pending) => _$this._pending = pending;

  int? _issued;
  int? get issued => _$this._issued;
  set issued(int? issued) => _$this._issued = issued;

  DashboardStatsReportOutputByStatusBuilder() {
    DashboardStatsReportOutputByStatus._defaults(this);
  }

  DashboardStatsReportOutputByStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generated = $v.generated;
      _pending = $v.pending;
      _issued = $v.issued;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardStatsReportOutputByStatus other) {
    _$v = other as _$DashboardStatsReportOutputByStatus;
  }

  @override
  void update(
    void Function(DashboardStatsReportOutputByStatusBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStatsReportOutputByStatus build() => _build();

  _$DashboardStatsReportOutputByStatus _build() {
    final _$result =
        _$v ??
        _$DashboardStatsReportOutputByStatus._(
          generated: BuiltValueNullFieldError.checkNotNull(
            generated,
            r'DashboardStatsReportOutputByStatus',
            'generated',
          ),
          pending: BuiltValueNullFieldError.checkNotNull(
            pending,
            r'DashboardStatsReportOutputByStatus',
            'pending',
          ),
          issued: BuiltValueNullFieldError.checkNotNull(
            issued,
            r'DashboardStatsReportOutputByStatus',
            'issued',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
