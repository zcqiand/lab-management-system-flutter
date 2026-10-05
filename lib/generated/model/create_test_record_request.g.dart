// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_test_record_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTestRecordRequest extends CreateTestRecordRequest {
  @override
  final String sampleId;
  @override
  final String parameterCode;
  @override
  final String? standardCode;
  @override
  final String? requirementCode;
  @override
  final String requirement;
  @override
  final String result;
  @override
  final String? verdict;

  factory _$CreateTestRecordRequest([
    void Function(CreateTestRecordRequestBuilder)? updates,
  ]) => (CreateTestRecordRequestBuilder()..update(updates))._build();

  _$CreateTestRecordRequest._({
    required this.sampleId,
    required this.parameterCode,
    this.standardCode,
    this.requirementCode,
    required this.requirement,
    required this.result,
    this.verdict,
  }) : super._();
  @override
  CreateTestRecordRequest rebuild(
    void Function(CreateTestRecordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateTestRecordRequestBuilder toBuilder() =>
      CreateTestRecordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTestRecordRequest &&
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
    return (newBuiltValueToStringHelper(r'CreateTestRecordRequest')
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

class CreateTestRecordRequestBuilder
    implements
        Builder<CreateTestRecordRequest, CreateTestRecordRequestBuilder> {
  _$CreateTestRecordRequest? _$v;

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

  CreateTestRecordRequestBuilder() {
    CreateTestRecordRequest._defaults(this);
  }

  CreateTestRecordRequestBuilder get _$this {
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
  void replace(CreateTestRecordRequest other) {
    _$v = other as _$CreateTestRecordRequest;
  }

  @override
  void update(void Function(CreateTestRecordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTestRecordRequest build() => _build();

  _$CreateTestRecordRequest _build() {
    final _$result =
        _$v ??
        _$CreateTestRecordRequest._(
          sampleId: BuiltValueNullFieldError.checkNotNull(
            sampleId,
            r'CreateTestRecordRequest',
            'sampleId',
          ),
          parameterCode: BuiltValueNullFieldError.checkNotNull(
            parameterCode,
            r'CreateTestRecordRequest',
            'parameterCode',
          ),
          standardCode: standardCode,
          requirementCode: requirementCode,
          requirement: BuiltValueNullFieldError.checkNotNull(
            requirement,
            r'CreateTestRecordRequest',
            'requirement',
          ),
          result: BuiltValueNullFieldError.checkNotNull(
            result,
            r'CreateTestRecordRequest',
            'result',
          ),
          verdict: verdict,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
