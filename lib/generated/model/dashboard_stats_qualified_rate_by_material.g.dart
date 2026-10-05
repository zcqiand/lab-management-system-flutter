// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats_qualified_rate_by_material.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStatsQualifiedRateByMaterial
    extends DashboardStatsQualifiedRateByMaterial {
  @override
  final MaterialQualifiedRate concrete;
  @override
  final MaterialQualifiedRate rebar;
  @override
  final MaterialQualifiedRate sand;

  factory _$DashboardStatsQualifiedRateByMaterial([
    void Function(DashboardStatsQualifiedRateByMaterialBuilder)? updates,
  ]) => (DashboardStatsQualifiedRateByMaterialBuilder()..update(updates))
      ._build();

  _$DashboardStatsQualifiedRateByMaterial._({
    required this.concrete,
    required this.rebar,
    required this.sand,
  }) : super._();
  @override
  DashboardStatsQualifiedRateByMaterial rebuild(
    void Function(DashboardStatsQualifiedRateByMaterialBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardStatsQualifiedRateByMaterialBuilder toBuilder() =>
      DashboardStatsQualifiedRateByMaterialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStatsQualifiedRateByMaterial &&
        concrete == other.concrete &&
        rebar == other.rebar &&
        sand == other.sand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, concrete.hashCode);
    _$hash = $jc(_$hash, rebar.hashCode);
    _$hash = $jc(_$hash, sand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DashboardStatsQualifiedRateByMaterial',
          )
          ..add('concrete', concrete)
          ..add('rebar', rebar)
          ..add('sand', sand))
        .toString();
  }
}

class DashboardStatsQualifiedRateByMaterialBuilder
    implements
        Builder<
          DashboardStatsQualifiedRateByMaterial,
          DashboardStatsQualifiedRateByMaterialBuilder
        > {
  _$DashboardStatsQualifiedRateByMaterial? _$v;

  MaterialQualifiedRateBuilder? _concrete;
  MaterialQualifiedRateBuilder get concrete =>
      _$this._concrete ??= MaterialQualifiedRateBuilder();
  set concrete(MaterialQualifiedRateBuilder? concrete) =>
      _$this._concrete = concrete;

  MaterialQualifiedRateBuilder? _rebar;
  MaterialQualifiedRateBuilder get rebar =>
      _$this._rebar ??= MaterialQualifiedRateBuilder();
  set rebar(MaterialQualifiedRateBuilder? rebar) => _$this._rebar = rebar;

  MaterialQualifiedRateBuilder? _sand;
  MaterialQualifiedRateBuilder get sand =>
      _$this._sand ??= MaterialQualifiedRateBuilder();
  set sand(MaterialQualifiedRateBuilder? sand) => _$this._sand = sand;

  DashboardStatsQualifiedRateByMaterialBuilder() {
    DashboardStatsQualifiedRateByMaterial._defaults(this);
  }

  DashboardStatsQualifiedRateByMaterialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _concrete = $v.concrete.toBuilder();
      _rebar = $v.rebar.toBuilder();
      _sand = $v.sand.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardStatsQualifiedRateByMaterial other) {
    _$v = other as _$DashboardStatsQualifiedRateByMaterial;
  }

  @override
  void update(
    void Function(DashboardStatsQualifiedRateByMaterialBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStatsQualifiedRateByMaterial build() => _build();

  _$DashboardStatsQualifiedRateByMaterial _build() {
    _$DashboardStatsQualifiedRateByMaterial _$result;
    try {
      _$result =
          _$v ??
          _$DashboardStatsQualifiedRateByMaterial._(
            concrete: concrete.build(),
            rebar: rebar.build(),
            sand: sand.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'concrete';
        concrete.build();
        _$failedField = 'rebar';
        rebar.build();
        _$failedField = 'sand';
        sand.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DashboardStatsQualifiedRateByMaterial',
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
