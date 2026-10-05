// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats_report_count_by_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStatsReportCountByStatus
    extends DashboardStatsReportCountByStatus {
  @override
  final int draft;
  @override
  final int reviewing;
  @override
  final int issued;

  factory _$DashboardStatsReportCountByStatus([
    void Function(DashboardStatsReportCountByStatusBuilder)? updates,
  ]) => (DashboardStatsReportCountByStatusBuilder()..update(updates))._build();

  _$DashboardStatsReportCountByStatus._({
    required this.draft,
    required this.reviewing,
    required this.issued,
  }) : super._();
  @override
  DashboardStatsReportCountByStatus rebuild(
    void Function(DashboardStatsReportCountByStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardStatsReportCountByStatusBuilder toBuilder() =>
      DashboardStatsReportCountByStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStatsReportCountByStatus &&
        draft == other.draft &&
        reviewing == other.reviewing &&
        issued == other.issued;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, draft.hashCode);
    _$hash = $jc(_$hash, reviewing.hashCode);
    _$hash = $jc(_$hash, issued.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardStatsReportCountByStatus')
          ..add('draft', draft)
          ..add('reviewing', reviewing)
          ..add('issued', issued))
        .toString();
  }
}

class DashboardStatsReportCountByStatusBuilder
    implements
        Builder<
          DashboardStatsReportCountByStatus,
          DashboardStatsReportCountByStatusBuilder
        > {
  _$DashboardStatsReportCountByStatus? _$v;

  int? _draft;
  int? get draft => _$this._draft;
  set draft(int? draft) => _$this._draft = draft;

  int? _reviewing;
  int? get reviewing => _$this._reviewing;
  set reviewing(int? reviewing) => _$this._reviewing = reviewing;

  int? _issued;
  int? get issued => _$this._issued;
  set issued(int? issued) => _$this._issued = issued;

  DashboardStatsReportCountByStatusBuilder() {
    DashboardStatsReportCountByStatus._defaults(this);
  }

  DashboardStatsReportCountByStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _draft = $v.draft;
      _reviewing = $v.reviewing;
      _issued = $v.issued;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardStatsReportCountByStatus other) {
    _$v = other as _$DashboardStatsReportCountByStatus;
  }

  @override
  void update(
    void Function(DashboardStatsReportCountByStatusBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStatsReportCountByStatus build() => _build();

  _$DashboardStatsReportCountByStatus _build() {
    final _$result =
        _$v ??
        _$DashboardStatsReportCountByStatus._(
          draft: BuiltValueNullFieldError.checkNotNull(
            draft,
            r'DashboardStatsReportCountByStatus',
            'draft',
          ),
          reviewing: BuiltValueNullFieldError.checkNotNull(
            reviewing,
            r'DashboardStatsReportCountByStatus',
            'reviewing',
          ),
          issued: BuiltValueNullFieldError.checkNotNull(
            issued,
            r'DashboardStatsReportCountByStatus',
            'issued',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
