// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_technical_requirement_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTechnicalRequirementRequest
    extends UpdateTechnicalRequirementRequest {
  @override
  final String? conditions;
  @override
  final RequirementValueType? valueType;
  @override
  final int? minValue;
  @override
  final int? maxValue;
  @override
  final String? targetValue;
  @override
  final String? expression;
  @override
  final String? unit;
  @override
  final RequirementComparison? comparison;
  @override
  final RequirementJudgmentMode? judgmentMode;
  @override
  final RequirementVerificationStatus? verificationStatus;
  @override
  final String? clause;
  @override
  final int? sourcePage;
  @override
  final String? sourceHash;
  @override
  final String? brand;
  @override
  final String? model;
  @override
  final String? grade;
  @override
  final String? spec;
  @override
  final String? sieve;
  @override
  final String? remark;
  @override
  final int? sortOrder;

  factory _$UpdateTechnicalRequirementRequest([
    void Function(UpdateTechnicalRequirementRequestBuilder)? updates,
  ]) => (UpdateTechnicalRequirementRequestBuilder()..update(updates))._build();

  _$UpdateTechnicalRequirementRequest._({
    this.conditions,
    this.valueType,
    this.minValue,
    this.maxValue,
    this.targetValue,
    this.expression,
    this.unit,
    this.comparison,
    this.judgmentMode,
    this.verificationStatus,
    this.clause,
    this.sourcePage,
    this.sourceHash,
    this.brand,
    this.model,
    this.grade,
    this.spec,
    this.sieve,
    this.remark,
    this.sortOrder,
  }) : super._();
  @override
  UpdateTechnicalRequirementRequest rebuild(
    void Function(UpdateTechnicalRequirementRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateTechnicalRequirementRequestBuilder toBuilder() =>
      UpdateTechnicalRequirementRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTechnicalRequirementRequest &&
        conditions == other.conditions &&
        valueType == other.valueType &&
        minValue == other.minValue &&
        maxValue == other.maxValue &&
        targetValue == other.targetValue &&
        expression == other.expression &&
        unit == other.unit &&
        comparison == other.comparison &&
        judgmentMode == other.judgmentMode &&
        verificationStatus == other.verificationStatus &&
        clause == other.clause &&
        sourcePage == other.sourcePage &&
        sourceHash == other.sourceHash &&
        brand == other.brand &&
        model == other.model &&
        grade == other.grade &&
        spec == other.spec &&
        sieve == other.sieve &&
        remark == other.remark &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, minValue.hashCode);
    _$hash = $jc(_$hash, maxValue.hashCode);
    _$hash = $jc(_$hash, targetValue.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, comparison.hashCode);
    _$hash = $jc(_$hash, judgmentMode.hashCode);
    _$hash = $jc(_$hash, verificationStatus.hashCode);
    _$hash = $jc(_$hash, clause.hashCode);
    _$hash = $jc(_$hash, sourcePage.hashCode);
    _$hash = $jc(_$hash, sourceHash.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, spec.hashCode);
    _$hash = $jc(_$hash, sieve.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTechnicalRequirementRequest')
          ..add('conditions', conditions)
          ..add('valueType', valueType)
          ..add('minValue', minValue)
          ..add('maxValue', maxValue)
          ..add('targetValue', targetValue)
          ..add('expression', expression)
          ..add('unit', unit)
          ..add('comparison', comparison)
          ..add('judgmentMode', judgmentMode)
          ..add('verificationStatus', verificationStatus)
          ..add('clause', clause)
          ..add('sourcePage', sourcePage)
          ..add('sourceHash', sourceHash)
          ..add('brand', brand)
          ..add('model', model)
          ..add('grade', grade)
          ..add('spec', spec)
          ..add('sieve', sieve)
          ..add('remark', remark)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class UpdateTechnicalRequirementRequestBuilder
    implements
        Builder<
          UpdateTechnicalRequirementRequest,
          UpdateTechnicalRequirementRequestBuilder
        > {
  _$UpdateTechnicalRequirementRequest? _$v;

  String? _conditions;
  String? get conditions => _$this._conditions;
  set conditions(String? conditions) => _$this._conditions = conditions;

  RequirementValueType? _valueType;
  RequirementValueType? get valueType => _$this._valueType;
  set valueType(RequirementValueType? valueType) =>
      _$this._valueType = valueType;

  int? _minValue;
  int? get minValue => _$this._minValue;
  set minValue(int? minValue) => _$this._minValue = minValue;

  int? _maxValue;
  int? get maxValue => _$this._maxValue;
  set maxValue(int? maxValue) => _$this._maxValue = maxValue;

  String? _targetValue;
  String? get targetValue => _$this._targetValue;
  set targetValue(String? targetValue) => _$this._targetValue = targetValue;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  RequirementComparison? _comparison;
  RequirementComparison? get comparison => _$this._comparison;
  set comparison(RequirementComparison? comparison) =>
      _$this._comparison = comparison;

  RequirementJudgmentMode? _judgmentMode;
  RequirementJudgmentMode? get judgmentMode => _$this._judgmentMode;
  set judgmentMode(RequirementJudgmentMode? judgmentMode) =>
      _$this._judgmentMode = judgmentMode;

  RequirementVerificationStatus? _verificationStatus;
  RequirementVerificationStatus? get verificationStatus =>
      _$this._verificationStatus;
  set verificationStatus(RequirementVerificationStatus? verificationStatus) =>
      _$this._verificationStatus = verificationStatus;

  String? _clause;
  String? get clause => _$this._clause;
  set clause(String? clause) => _$this._clause = clause;

  int? _sourcePage;
  int? get sourcePage => _$this._sourcePage;
  set sourcePage(int? sourcePage) => _$this._sourcePage = sourcePage;

  String? _sourceHash;
  String? get sourceHash => _$this._sourceHash;
  set sourceHash(String? sourceHash) => _$this._sourceHash = sourceHash;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _spec;
  String? get spec => _$this._spec;
  set spec(String? spec) => _$this._spec = spec;

  String? _sieve;
  String? get sieve => _$this._sieve;
  set sieve(String? sieve) => _$this._sieve = sieve;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  UpdateTechnicalRequirementRequestBuilder() {
    UpdateTechnicalRequirementRequest._defaults(this);
  }

  UpdateTechnicalRequirementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conditions = $v.conditions;
      _valueType = $v.valueType;
      _minValue = $v.minValue;
      _maxValue = $v.maxValue;
      _targetValue = $v.targetValue;
      _expression = $v.expression;
      _unit = $v.unit;
      _comparison = $v.comparison;
      _judgmentMode = $v.judgmentMode;
      _verificationStatus = $v.verificationStatus;
      _clause = $v.clause;
      _sourcePage = $v.sourcePage;
      _sourceHash = $v.sourceHash;
      _brand = $v.brand;
      _model = $v.model;
      _grade = $v.grade;
      _spec = $v.spec;
      _sieve = $v.sieve;
      _remark = $v.remark;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTechnicalRequirementRequest other) {
    _$v = other as _$UpdateTechnicalRequirementRequest;
  }

  @override
  void update(
    void Function(UpdateTechnicalRequirementRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTechnicalRequirementRequest build() => _build();

  _$UpdateTechnicalRequirementRequest _build() {
    final _$result =
        _$v ??
        _$UpdateTechnicalRequirementRequest._(
          conditions: conditions,
          valueType: valueType,
          minValue: minValue,
          maxValue: maxValue,
          targetValue: targetValue,
          expression: expression,
          unit: unit,
          comparison: comparison,
          judgmentMode: judgmentMode,
          verificationStatus: verificationStatus,
          clause: clause,
          sourcePage: sourcePage,
          sourceHash: sourceHash,
          brand: brand,
          model: model,
          grade: grade,
          spec: spec,
          sieve: sieve,
          remark: remark,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
