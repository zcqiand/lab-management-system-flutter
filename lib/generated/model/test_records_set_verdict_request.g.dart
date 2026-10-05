// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_records_set_verdict_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestRecordsSetVerdictRequest extends TestRecordsSetVerdictRequest {
  @override
  final String verdict;

  factory _$TestRecordsSetVerdictRequest([
    void Function(TestRecordsSetVerdictRequestBuilder)? updates,
  ]) => (TestRecordsSetVerdictRequestBuilder()..update(updates))._build();

  _$TestRecordsSetVerdictRequest._({required this.verdict}) : super._();
  @override
  TestRecordsSetVerdictRequest rebuild(
    void Function(TestRecordsSetVerdictRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TestRecordsSetVerdictRequestBuilder toBuilder() =>
      TestRecordsSetVerdictRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRecordsSetVerdictRequest && verdict == other.verdict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TestRecordsSetVerdictRequest',
    )..add('verdict', verdict)).toString();
  }
}

class TestRecordsSetVerdictRequestBuilder
    implements
        Builder<
          TestRecordsSetVerdictRequest,
          TestRecordsSetVerdictRequestBuilder
        > {
  _$TestRecordsSetVerdictRequest? _$v;

  String? _verdict;
  String? get verdict => _$this._verdict;
  set verdict(String? verdict) => _$this._verdict = verdict;

  TestRecordsSetVerdictRequestBuilder() {
    TestRecordsSetVerdictRequest._defaults(this);
  }

  TestRecordsSetVerdictRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verdict = $v.verdict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRecordsSetVerdictRequest other) {
    _$v = other as _$TestRecordsSetVerdictRequest;
  }

  @override
  void update(void Function(TestRecordsSetVerdictRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRecordsSetVerdictRequest build() => _build();

  _$TestRecordsSetVerdictRequest _build() {
    final _$result =
        _$v ??
        _$TestRecordsSetVerdictRequest._(
          verdict: BuiltValueNullFieldError.checkNotNull(
            verdict,
            r'TestRecordsSetVerdictRequest',
            'verdict',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
