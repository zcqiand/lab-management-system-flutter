// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStats extends DashboardStats {
  @override
  final int contractCount;
  @override
  final int receiptCount;
  @override
  final int sampleCount;
  @override
  final DashboardStatsReportCountByStatus reportCountByStatus;
  @override
  final int pendingTaskCount;
  @override
  final int todayTestCount;
  @override
  final DashboardStatsQualifiedRateByMaterial qualifiedRateByMaterial;
  @override
  final DashboardStatsReportOutputByStatus reportOutputByStatus;
  @override
  final DashboardStatsFunnelByStage funnelByStage;

  factory _$DashboardStats([void Function(DashboardStatsBuilder)? updates]) =>
      (DashboardStatsBuilder()..update(updates))._build();

  _$DashboardStats._({
    required this.contractCount,
    required this.receiptCount,
    required this.sampleCount,
    required this.reportCountByStatus,
    required this.pendingTaskCount,
    required this.todayTestCount,
    required this.qualifiedRateByMaterial,
    required this.reportOutputByStatus,
    required this.funnelByStage,
  }) : super._();
  @override
  DashboardStats rebuild(void Function(DashboardStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardStatsBuilder toBuilder() => DashboardStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStats &&
        contractCount == other.contractCount &&
        receiptCount == other.receiptCount &&
        sampleCount == other.sampleCount &&
        reportCountByStatus == other.reportCountByStatus &&
        pendingTaskCount == other.pendingTaskCount &&
        todayTestCount == other.todayTestCount &&
        qualifiedRateByMaterial == other.qualifiedRateByMaterial &&
        reportOutputByStatus == other.reportOutputByStatus &&
        funnelByStage == other.funnelByStage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contractCount.hashCode);
    _$hash = $jc(_$hash, receiptCount.hashCode);
    _$hash = $jc(_$hash, sampleCount.hashCode);
    _$hash = $jc(_$hash, reportCountByStatus.hashCode);
    _$hash = $jc(_$hash, pendingTaskCount.hashCode);
    _$hash = $jc(_$hash, todayTestCount.hashCode);
    _$hash = $jc(_$hash, qualifiedRateByMaterial.hashCode);
    _$hash = $jc(_$hash, reportOutputByStatus.hashCode);
    _$hash = $jc(_$hash, funnelByStage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardStats')
          ..add('contractCount', contractCount)
          ..add('receiptCount', receiptCount)
          ..add('sampleCount', sampleCount)
          ..add('reportCountByStatus', reportCountByStatus)
          ..add('pendingTaskCount', pendingTaskCount)
          ..add('todayTestCount', todayTestCount)
          ..add('qualifiedRateByMaterial', qualifiedRateByMaterial)
          ..add('reportOutputByStatus', reportOutputByStatus)
          ..add('funnelByStage', funnelByStage))
        .toString();
  }
}

class DashboardStatsBuilder
    implements Builder<DashboardStats, DashboardStatsBuilder> {
  _$DashboardStats? _$v;

  int? _contractCount;
  int? get contractCount => _$this._contractCount;
  set contractCount(int? contractCount) =>
      _$this._contractCount = contractCount;

  int? _receiptCount;
  int? get receiptCount => _$this._receiptCount;
  set receiptCount(int? receiptCount) => _$this._receiptCount = receiptCount;

  int? _sampleCount;
  int? get sampleCount => _$this._sampleCount;
  set sampleCount(int? sampleCount) => _$this._sampleCount = sampleCount;

  DashboardStatsReportCountByStatusBuilder? _reportCountByStatus;
  DashboardStatsReportCountByStatusBuilder get reportCountByStatus =>
      _$this._reportCountByStatus ??=
          DashboardStatsReportCountByStatusBuilder();
  set reportCountByStatus(
    DashboardStatsReportCountByStatusBuilder? reportCountByStatus,
  ) => _$this._reportCountByStatus = reportCountByStatus;

  int? _pendingTaskCount;
  int? get pendingTaskCount => _$this._pendingTaskCount;
  set pendingTaskCount(int? pendingTaskCount) =>
      _$this._pendingTaskCount = pendingTaskCount;

  int? _todayTestCount;
  int? get todayTestCount => _$this._todayTestCount;
  set todayTestCount(int? todayTestCount) =>
      _$this._todayTestCount = todayTestCount;

  DashboardStatsQualifiedRateByMaterialBuilder? _qualifiedRateByMaterial;
  DashboardStatsQualifiedRateByMaterialBuilder get qualifiedRateByMaterial =>
      _$this._qualifiedRateByMaterial ??=
          DashboardStatsQualifiedRateByMaterialBuilder();
  set qualifiedRateByMaterial(
    DashboardStatsQualifiedRateByMaterialBuilder? qualifiedRateByMaterial,
  ) => _$this._qualifiedRateByMaterial = qualifiedRateByMaterial;

  DashboardStatsReportOutputByStatusBuilder? _reportOutputByStatus;
  DashboardStatsReportOutputByStatusBuilder get reportOutputByStatus =>
      _$this._reportOutputByStatus ??=
          DashboardStatsReportOutputByStatusBuilder();
  set reportOutputByStatus(
    DashboardStatsReportOutputByStatusBuilder? reportOutputByStatus,
  ) => _$this._reportOutputByStatus = reportOutputByStatus;

  DashboardStatsFunnelByStageBuilder? _funnelByStage;
  DashboardStatsFunnelByStageBuilder get funnelByStage =>
      _$this._funnelByStage ??= DashboardStatsFunnelByStageBuilder();
  set funnelByStage(DashboardStatsFunnelByStageBuilder? funnelByStage) =>
      _$this._funnelByStage = funnelByStage;

  DashboardStatsBuilder() {
    DashboardStats._defaults(this);
  }

  DashboardStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contractCount = $v.contractCount;
      _receiptCount = $v.receiptCount;
      _sampleCount = $v.sampleCount;
      _reportCountByStatus = $v.reportCountByStatus.toBuilder();
      _pendingTaskCount = $v.pendingTaskCount;
      _todayTestCount = $v.todayTestCount;
      _qualifiedRateByMaterial = $v.qualifiedRateByMaterial.toBuilder();
      _reportOutputByStatus = $v.reportOutputByStatus.toBuilder();
      _funnelByStage = $v.funnelByStage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardStats other) {
    _$v = other as _$DashboardStats;
  }

  @override
  void update(void Function(DashboardStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStats build() => _build();

  _$DashboardStats _build() {
    _$DashboardStats _$result;
    try {
      _$result =
          _$v ??
          _$DashboardStats._(
            contractCount: BuiltValueNullFieldError.checkNotNull(
              contractCount,
              r'DashboardStats',
              'contractCount',
            ),
            receiptCount: BuiltValueNullFieldError.checkNotNull(
              receiptCount,
              r'DashboardStats',
              'receiptCount',
            ),
            sampleCount: BuiltValueNullFieldError.checkNotNull(
              sampleCount,
              r'DashboardStats',
              'sampleCount',
            ),
            reportCountByStatus: reportCountByStatus.build(),
            pendingTaskCount: BuiltValueNullFieldError.checkNotNull(
              pendingTaskCount,
              r'DashboardStats',
              'pendingTaskCount',
            ),
            todayTestCount: BuiltValueNullFieldError.checkNotNull(
              todayTestCount,
              r'DashboardStats',
              'todayTestCount',
            ),
            qualifiedRateByMaterial: qualifiedRateByMaterial.build(),
            reportOutputByStatus: reportOutputByStatus.build(),
            funnelByStage: funnelByStage.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reportCountByStatus';
        reportCountByStatus.build();

        _$failedField = 'qualifiedRateByMaterial';
        qualifiedRateByMaterial.build();
        _$failedField = 'reportOutputByStatus';
        reportOutputByStatus.build();
        _$failedField = 'funnelByStage';
        funnelByStage.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DashboardStats',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
