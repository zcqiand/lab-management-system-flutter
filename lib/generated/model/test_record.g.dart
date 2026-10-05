// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestRecord extends TestRecord {
  @override
  final String id;
  @override
  final String tenantId;
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
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$TestRecord([void Function(TestRecordBuilder)? updates]) =>
      (TestRecordBuilder()..update(updates))._build();

  _$TestRecord._({
    required this.id,
    required this.tenantId,
    required this.sampleId,
    required this.parameterCode,
    this.standardCode,
    this.requirementCode,
    required this.requirement,
    required this.result,
    this.verdict,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  TestRecord rebuild(void Function(TestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestRecordBuilder toBuilder() => TestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRecord &&
        id == other.id &&
        tenantId == other.tenantId &&
        sampleId == other.sampleId &&
        parameterCode == other.parameterCode &&
        standardCode == other.standardCode &&
        requirementCode == other.requirementCode &&
        requirement == other.requirement &&
        result == other.result &&
        verdict == other.verdict &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, sampleId.hashCode);
    _$hash = $jc(_$hash, parameterCode.hashCode);
    _$hash = $jc(_$hash, standardCode.hashCode);
    _$hash = $jc(_$hash, requirementCode.hashCode);
    _$hash = $jc(_$hash, requirement.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestRecord')
          ..add('id', id)
          ..add('tenantId', tenantId)
          ..add('sampleId', sampleId)
          ..add('parameterCode', parameterCode)
          ..add('standardCode', standardCode)
          ..add('requirementCode', requirementCode)
          ..add('requirement', requirement)
          ..add('result', result)
          ..add('verdict', verdict)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TestRecordBuilder implements Builder<TestRecord, TestRecordBuilder> {
  _$TestRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

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

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  TestRecordBuilder() {
    TestRecord._defaults(this);
  }

  TestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tenantId = $v.tenantId;
      _sampleId = $v.sampleId;
      _parameterCode = $v.parameterCode;
      _standardCode = $v.standardCode;
      _requirementCode = $v.requirementCode;
      _requirement = $v.requirement;
      _result = $v.result;
      _verdict = $v.verdict;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRecord other) {
    _$v = other as _$TestRecord;
  }

  @override
  void update(void Function(TestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRecord build() => _build();

  _$TestRecord _build() {
    final _$result =
        _$v ??
        _$TestRecord._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TestRecord', 'id'),
          tenantId: BuiltValueNullFieldError.checkNotNull(
            tenantId,
            r'TestRecord',
            'tenantId',
          ),
          sampleId: BuiltValueNullFieldError.checkNotNull(
            sampleId,
            r'TestRecord',
            'sampleId',
          ),
          parameterCode: BuiltValueNullFieldError.checkNotNull(
            parameterCode,
            r'TestRecord',
            'parameterCode',
          ),
          standardCode: standardCode,
          requirementCode: requirementCode,
          requirement: BuiltValueNullFieldError.checkNotNull(
            requirement,
            r'TestRecord',
            'requirement',
          ),
          result: BuiltValueNullFieldError.checkNotNull(
            result,
            r'TestRecord',
            'result',
          ),
          verdict: verdict,
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'TestRecord',
            'createdAt',
          ),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
            updatedAt,
            r'TestRecord',
            'updatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
