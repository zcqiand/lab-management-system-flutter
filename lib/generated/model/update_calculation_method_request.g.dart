// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_calculation_method_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCalculationMethodRequest extends UpdateCalculationMethodRequest {
  @override
  final String? testingStandardCode;
  @override
  final String? reportNameCode;
  @override
  final CalculationAlgorithmType? algorithmType;
  @override
  final int? specimenCount;
  @override
  final String? formula;
  @override
  final String? conditions;
  @override
  final String? roundingRule;
  @override
  final String? remark;
  @override
  final int? sortOrder;

  factory _$UpdateCalculationMethodRequest([
    void Function(UpdateCalculationMethodRequestBuilder)? updates,
  ]) => (UpdateCalculationMethodRequestBuilder()..update(updates))._build();

  _$UpdateCalculationMethodRequest._({
    this.testingStandardCode,
    this.reportNameCode,
    this.algorithmType,
    this.specimenCount,
    this.formula,
    this.conditions,
    this.roundingRule,
    this.remark,
    this.sortOrder,
  }) : super._();
  @override
  UpdateCalculationMethodRequest rebuild(
    void Function(UpdateCalculationMethodRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCalculationMethodRequestBuilder toBuilder() =>
      UpdateCalculationMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCalculationMethodRequest &&
        testingStandardCode == other.testingStandardCode &&
        reportNameCode == other.reportNameCode &&
        algorithmType == other.algorithmType &&
        specimenCount == other.specimenCount &&
        formula == other.formula &&
        conditions == other.conditions &&
        roundingRule == other.roundingRule &&
        remark == other.remark &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testingStandardCode.hashCode);
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, algorithmType.hashCode);
    _$hash = $jc(_$hash, specimenCount.hashCode);
    _$hash = $jc(_$hash, formula.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jc(_$hash, roundingRule.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCalculationMethodRequest')
          ..add('testingStandardCode', testingStandardCode)
          ..add('reportNameCode', reportNameCode)
          ..add('algorithmType', algorithmType)
          ..add('specimenCount', specimenCount)
          ..add('formula', formula)
          ..add('conditions', conditions)
          ..add('roundingRule', roundingRule)
          ..add('remark', remark)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class UpdateCalculationMethodRequestBuilder
    implements
        Builder<
          UpdateCalculationMethodRequest,
          UpdateCalculationMethodRequestBuilder
        > {
  _$UpdateCalculationMethodRequest? _$v;

  String? _testingStandardCode;
  String? get testingStandardCode => _$this._testingStandardCode;
  set testingStandardCode(String? testingStandardCode) =>
      _$this._testingStandardCode = testingStandardCode;

  String? _reportNameCode;
  String? get reportNameCode => _$this._reportNameCode;
  set reportNameCode(String? reportNameCode) =>
      _$this._reportNameCode = reportNameCode;

  CalculationAlgorithmType? _algorithmType;
  CalculationAlgorithmType? get algorithmType => _$this._algorithmType;
  set algorithmType(CalculationAlgorithmType? algorithmType) =>
      _$this._algorithmType = algorithmType;

  int? _specimenCount;
  int? get specimenCount => _$this._specimenCount;
  set specimenCount(int? specimenCount) =>
      _$this._specimenCount = specimenCount;

  String? _formula;
  String? get formula => _$this._formula;
  set formula(String? formula) => _$this._formula = formula;

  String? _conditions;
  String? get conditions => _$this._conditions;
  set conditions(String? conditions) => _$this._conditions = conditions;

  String? _roundingRule;
  String? get roundingRule => _$this._roundingRule;
  set roundingRule(String? roundingRule) => _$this._roundingRule = roundingRule;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  UpdateCalculationMethodRequestBuilder() {
    UpdateCalculationMethodRequest._defaults(this);
  }

  UpdateCalculationMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testingStandardCode = $v.testingStandardCode;
      _reportNameCode = $v.reportNameCode;
      _algorithmType = $v.algorithmType;
      _specimenCount = $v.specimenCount;
      _formula = $v.formula;
      _conditions = $v.conditions;
      _roundingRule = $v.roundingRule;
      _remark = $v.remark;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCalculationMethodRequest other) {
    _$v = other as _$UpdateCalculationMethodRequest;
  }

  @override
  void update(void Function(UpdateCalculationMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCalculationMethodRequest build() => _build();

  _$UpdateCalculationMethodRequest _build() {
    final _$result =
        _$v ??
        _$UpdateCalculationMethodRequest._(
          testingStandardCode: testingStandardCode,
          reportNameCode: reportNameCode,
          algorithmType: algorithmType,
          specimenCount: specimenCount,
          formula: formula,
          conditions: conditions,
          roundingRule: roundingRule,
          remark: remark,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
