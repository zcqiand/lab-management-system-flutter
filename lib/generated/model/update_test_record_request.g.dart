// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_test_record_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTestRecordRequest extends UpdateTestRecordRequest {
  @override
  final String? sampleId;
  @override
  final String? parameterCode;
  @override
  final String? standardCode;
  @override
  final String? requirementCode;
  @override
  final String? requirement;
  @override
  final String? result;
  @override
  final String? verdict;

  factory _$UpdateTestRecordRequest([
    void Function(UpdateTestRecordRequestBuilder)? updates,
  ]) => (UpdateTestRecordRequestBuilder()..update(updates))._build();

  _$UpdateTestRecordRequest._({
    this.sampleId,
    this.parameterCode,
    this.standardCode,
    this.requirementCode,
    this.requirement,
    this.result,
    this.verdict,
  }) : super._();
  @override
  UpdateTestRecordRequest rebuild(
    void Function(UpdateTestRecordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateTestRecordRequestBuilder toBuilder() =>
      UpdateTestRecordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTestRecordRequest &&
        sampleId == other.sampleId &&
        parameterCode == other.parameterCode &&
        standardCode == other.standardCode &&
        requirementCode == other.requirementCode &&
        requirement == other.requirement &&
        result == other.result &&
        verdict == other.verdict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sampleId.hashCode);
    _$hash = $jc(_$hash, parameterCode.hashCode);
    _$hash = $jc(_$hash, standardCode.hashCode);
    _$hash = $jc(_$hash, requirementCode.hashCode);
    _$hash = $jc(_$hash, requirement.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTestRecordRequest')
          ..add('sampleId', sampleId)
          ..add('parameterCode', parameterCode)
          ..add('standardCode', standardCode)
          ..add('requirementCode', requirementCode)
          ..add('requirement', requirement)
          ..add('result', result)
          ..add('verdict', verdict))
        .toString();
  }
}

class UpdateTestRecordRequestBuilder
    implements
        Builder<UpdateTestRecordRequest, UpdateTestRecordRequestBuilder> {
  _$UpdateTestRecordRequest? _$v;

  String? _sampleId;
  String? get sampleId => _$this._sampleId;
  set sampleId(String? sampleId) => _$this._sampleId = sampleId;

  String? _parameterCode;
  String? get parameterCode => _$this._parameterCode;
  set parameterCode(String? parameterCode) =>
      _$this._parameterCode = parameterCode;

  String? _standardCode;
  String? get standardCode => _$this._standardCode;
  set standardCode(String? standardCode) => _$this._standardCode = standardCode;

  String? _requirementCode;
  String? get requirementCode => _$this._requirementCode;
  set requirementCode(String? requirementCode) =>
      _$this._requirementCode = requirementCode;

  String? _requirement;
  String? get requirement => _$this._requirement;
  set requirement(String? requirement) => _$this._requirement = requirement;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  String? _verdict;
  String? get verdict => _$this._verdict;
  set verdict(String? verdict) => _$this._verdict = verdict;

  UpdateTestRecordRequestBuilder() {
    UpdateTestRecordRequest._defaults(this);
  }

  UpdateTestRecordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sampleId = $v.sampleId;
      _parameterCode = $v.parameterCode;
      _standardCode = $v.standardCode;
      _requirementCode = $v.requirementCode;
      _requirement = $v.requirement;
      _result = $v.result;
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTestRecordRequest other) {
    _$v = other as _$UpdateTestRecordRequest;
  }

  @override
  void update(void Function(UpdateTestRecordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTestRecordRequest build() => _build();

  _$UpdateTestRecordRequest _build() {
    final _$result =
        _$v ??
        _$UpdateTestRecordRequest._(
          sampleId: sampleId,
          parameterCode: parameterCode,
          standardCode: standardCode,
          requirementCode: requirementCode,
          requirement: requirement,
          result: result,
          verdict: verdict,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
