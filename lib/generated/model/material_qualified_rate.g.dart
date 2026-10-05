// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_qualified_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaterialQualifiedRate extends MaterialQualifiedRate {
  @override
  final int total;
  @override
  final int pass;
  @override
  final double rate;

  factory _$MaterialQualifiedRate([
    void Function(MaterialQualifiedRateBuilder)? updates,
  ]) => (MaterialQualifiedRateBuilder()..update(updates))._build();

  _$MaterialQualifiedRate._({
    required this.total,
    required this.pass,
    required this.rate,
  }) : super._();
  @override
  MaterialQualifiedRate rebuild(
    void Function(MaterialQualifiedRateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MaterialQualifiedRateBuilder toBuilder() =>
      MaterialQualifiedRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialQualifiedRate &&
        total == other.total &&
        pass == other.pass &&
        rate == other.rate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, pass.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaterialQualifiedRate')
          ..add('total', total)
          ..add('pass', pass)
          ..add('rate', rate))
        .toString();
  }
}

class MaterialQualifiedRateBuilder
    implements Builder<MaterialQualifiedRate, MaterialQualifiedRateBuilder> {
  _$MaterialQualifiedRate? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _pass;
  int? get pass => _$this._pass;
  set pass(int? pass) => _$this._pass = pass;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  MaterialQualifiedRateBuilder() {
    MaterialQualifiedRate._defaults(this);
  }

  MaterialQualifiedRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _pass = $v.pass;
      _rate = $v.rate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaterialQualifiedRate other) {
    _$v = other as _$MaterialQualifiedRate;
  }

  @override
  void update(void Function(MaterialQualifiedRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaterialQualifiedRate build() => _build();

  _$MaterialQualifiedRate _build() {
    final _$result =
        _$v ??
        _$MaterialQualifiedRate._(
          total: BuiltValueNullFieldError.checkNotNull(
            total,
            r'MaterialQualifiedRate',
            'total',
          ),
          pass: BuiltValueNullFieldError.checkNotNull(
            pass,
            r'MaterialQualifiedRate',
            'pass',
          ),
          rate: BuiltValueNullFieldError.checkNotNull(
            rate,
            r'MaterialQualifiedRate',
            'rate',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
