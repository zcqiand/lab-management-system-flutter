// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats_funnel_by_stage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStatsFunnelByStage extends DashboardStatsFunnelByStage {
  @override
  final int pendingCollect;
  @override
  final int received;
  @override
  final int testing;
  @override
  final int reporting;
  @override
  final int reviewing;
  @override
  final int issued;

  factory _$DashboardStatsFunnelByStage([
    void Function(DashboardStatsFunnelByStageBuilder)? updates,
  ]) => (DashboardStatsFunnelByStageBuilder()..update(updates))._build();

  _$DashboardStatsFunnelByStage._({
    required this.pendingCollect,
    required this.received,
    required this.testing,
    required this.reporting,
    required this.reviewing,
    required this.issued,
  }) : super._();
  @override
  DashboardStatsFunnelByStage rebuild(
    void Function(DashboardStatsFunnelByStageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardStatsFunnelByStageBuilder toBuilder() =>
      DashboardStatsFunnelByStageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStatsFunnelByStage &&
        pendingCollect == other.pendingCollect &&
        received == other.received &&
        testing == other.testing &&
        reporting == other.reporting &&
        reviewing == other.reviewing &&
        issued == other.issued;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pendingCollect.hashCode);
    _$hash = $jc(_$hash, received.hashCode);
    _$hash = $jc(_$hash, testing.hashCode);
    _$hash = $jc(_$hash, reporting.hashCode);
    _$hash = $jc(_$hash, reviewing.hashCode);
    _$hash = $jc(_$hash, issued.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardStatsFunnelByStage')
          ..add('pendingCollect', pendingCollect)
          ..add('received', received)
          ..add('testing', testing)
          ..add('reporting', reporting)
          ..add('reviewing', reviewing)
          ..add('issued', issued))
        .toString();
  }
}

class DashboardStatsFunnelByStageBuilder
    implements
        Builder<
          DashboardStatsFunnelByStage,
          DashboardStatsFunnelByStageBuilder
        > {
  _$DashboardStatsFunnelByStage? _$v;

  int? _pendingCollect;
  int? get pendingCollect => _$this._pendingCollect;
  set pendingCollect(int? pendingCollect) =>
      _$this._pendingCollect = pendingCollect;

  int? _received;
  int? get received => _$this._received;
  set received(int? received) => _$this._received = received;

  int? _testing;
  int? get testing => _$this._testing;
  set testing(int? testing) => _$this._testing = testing;

  int? _reporting;
  int? get reporting => _$this._reporting;
  set reporting(int? reporting) => _$this._reporting = reporting;

  int? _reviewing;
  int? get reviewing => _$this._reviewing;
  set reviewing(int? reviewing) => _$this._reviewing = reviewing;

  int? _issued;
  int? get issued => _$this._issued;
  set issued(int? issued) => _$this._issued = issued;

  DashboardStatsFunnelByStageBuilder() {
    DashboardStatsFunnelByStage._defaults(this);
  }

  DashboardStatsFunnelByStageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pendingCollect = $v.pendingCollect;
      _received = $v.received;
      _testing = $v.testing;
      _reporting = $v.reporting;
      _reviewing = $v.reviewing;
      _issued = $v.issued;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardStatsFunnelByStage other) {
    _$v = other as _$DashboardStatsFunnelByStage;
  }

  @override
  void update(void Function(DashboardStatsFunnelByStageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStatsFunnelByStage build() => _build();

  _$DashboardStatsFunnelByStage _build() {
    final _$result =
        _$v ??
        _$DashboardStatsFunnelByStage._(
          pendingCollect: BuiltValueNullFieldError.checkNotNull(
            pendingCollect,
            r'DashboardStatsFunnelByStage',
            'pendingCollect',
          ),
          received: BuiltValueNullFieldError.checkNotNull(
            received,
            r'DashboardStatsFunnelByStage',
            'received',
          ),
          testing: BuiltValueNullFieldError.checkNotNull(
            testing,
            r'DashboardStatsFunnelByStage',
            'testing',
          ),
          reporting: BuiltValueNullFieldError.checkNotNull(
            reporting,
            r'DashboardStatsFunnelByStage',
            'reporting',
          ),
          reviewing: BuiltValueNullFieldError.checkNotNull(
            reviewing,
            r'DashboardStatsFunnelByStage',
            'reviewing',
          ),
          issued: BuiltValueNullFieldError.checkNotNull(
            issued,
            r'DashboardStatsFunnelByStage',
            'issued',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
