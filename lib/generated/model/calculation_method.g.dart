// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalculationMethod extends CalculationMethod {
  @override
  final String inspectionObjectCode;
  @override
  final String inspectionParameterCode;
  @override
  final String? testingStandardCode;
  @override
  final String? reportNameCode;
  @override
  final CalculationAlgorithmType algorithmType;
  @override
  final int specimenCount;
  @override
  final String? formula;
  @override
  final String? conditions;
  @override
  final String? roundingRule;
  @override
  final String? remark;
  @override
  final int sortOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$CalculationMethod([
    void Function(CalculationMethodBuilder)? updates,
  ]) => (CalculationMethodBuilder()..update(updates))._build();

  _$CalculationMethod._({
    required this.inspectionObjectCode,
    required this.inspectionParameterCode,
    this.testingStandardCode,
    this.reportNameCode,
    required this.algorithmType,
    required this.specimenCount,
    this.formula,
    this.conditions,
    this.roundingRule,
    this.remark,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  CalculationMethod rebuild(void Function(CalculationMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalculationMethodBuilder toBuilder() =>
      CalculationMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalculationMethod &&
        inspectionObjectCode == other.inspectionObjectCode &&
        inspectionParameterCode == other.inspectionParameterCode &&
        testingStandardCode == other.testingStandardCode &&
        reportNameCode == other.reportNameCode &&
        algorithmType == other.algorithmType &&
        specimenCount == other.specimenCount &&
        formula == other.formula &&
        conditions == other.conditions &&
        roundingRule == other.roundingRule &&
        remark == other.remark &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jc(_$hash, testingStandardCode.hashCode);
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, algorithmType.hashCode);
    _$hash = $jc(_$hash, specimenCount.hashCode);
    _$hash = $jc(_$hash, formula.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jc(_$hash, roundingRule.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalculationMethod')
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('inspectionParameterCode', inspectionParameterCode)
          ..add('testingStandardCode', testingStandardCode)
          ..add('reportNameCode', reportNameCode)
          ..add('algorithmType', algorithmType)
          ..add('specimenCount', specimenCount)
          ..add('formula', formula)
          ..add('conditions', conditions)
          ..add('roundingRule', roundingRule)
          ..add('remark', remark)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CalculationMethodBuilder
    implements Builder<CalculationMethod, CalculationMethodBuilder> {
  _$CalculationMethod? _$v;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

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

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  CalculationMethodBuilder() {
    CalculationMethod._defaults(this);
  }

  CalculationMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _inspectionParameterCode = $v.inspectionParameterCode;
      _testingStandardCode = $v.testingStandardCode;
      _reportNameCode = $v.reportNameCode;
      _algorithmType = $v.algorithmType;
      _specimenCount = $v.specimenCount;
      _formula = $v.formula;
      _conditions = $v.conditions;
      _roundingRule = $v.roundingRule;
      _remark = $v.remark;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalculationMethod other) {
    _$v = other as _$CalculationMethod;
  }

  @override
  void update(void Function(CalculationMethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalculationMethod build() => _build();

  _$CalculationMethod _build() {
    final _$result =
        _$v ??
        _$CalculationMethod._(
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'CalculationMethod',
            'inspectionObjectCode',
          ),
          inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
            inspectionParameterCode,
            r'CalculationMethod',
            'inspectionParameterCode',
          ),
          testingStandardCode: testingStandardCode,
          reportNameCode: reportNameCode,
          algorithmType: BuiltValueNullFieldError.checkNotNull(
            algorithmType,
            r'CalculationMethod',
            'algorithmType',
          ),
          specimenCount: BuiltValueNullFieldError.checkNotNull(
            specimenCount,
            r'CalculationMethod',
            'specimenCount',
          ),
          formula: formula,
          conditions: conditions,
          roundingRule: roundingRule,
          remark: remark,
          sortOrder: BuiltValueNullFieldError.checkNotNull(
            sortOrder,
            r'CalculationMethod',
            'sortOrder',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'CalculationMethod',
            'createdAt',
          ),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
            updatedAt,
            r'CalculationMethod',
            'updatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
