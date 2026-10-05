// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_unlink_object_parameter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryUnlinkObjectParameterRequest
    extends InspectionDictionaryUnlinkObjectParameterRequest {
  @override
  final String inspectionObjectCode;
  @override
  final String inspectionParameterCode;

  factory _$InspectionDictionaryUnlinkObjectParameterRequest([
    void Function(InspectionDictionaryUnlinkObjectParameterRequestBuilder)?
    updates,
  ]) =>
      (InspectionDictionaryUnlinkObjectParameterRequestBuilder()
            ..update(updates))
          ._build();

  _$InspectionDictionaryUnlinkObjectParameterRequest._({
    required this.inspectionObjectCode,
    required this.inspectionParameterCode,
  }) : super._();
  @override
  InspectionDictionaryUnlinkObjectParameterRequest rebuild(
    void Function(InspectionDictionaryUnlinkObjectParameterRequestBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryUnlinkObjectParameterRequestBuilder toBuilder() =>
      InspectionDictionaryUnlinkObjectParameterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryUnlinkObjectParameterRequest &&
        inspectionObjectCode == other.inspectionObjectCode &&
        inspectionParameterCode == other.inspectionParameterCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'InspectionDictionaryUnlinkObjectParameterRequest',
          )
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('inspectionParameterCode', inspectionParameterCode))
        .toString();
  }
}

class InspectionDictionaryUnlinkObjectParameterRequestBuilder
    implements
        Builder<
          InspectionDictionaryUnlinkObjectParameterRequest,
          InspectionDictionaryUnlinkObjectParameterRequestBuilder
        > {
  _$InspectionDictionaryUnlinkObjectParameterRequest? _$v;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

  InspectionDictionaryUnlinkObjectParameterRequestBuilder() {
    InspectionDictionaryUnlinkObjectParameterRequest._defaults(this);
  }

  InspectionDictionaryUnlinkObjectParameterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _inspectionParameterCode = $v.inspectionParameterCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionDictionaryUnlinkObjectParameterRequest other) {
    _$v = other as _$InspectionDictionaryUnlinkObjectParameterRequest;
  }

  @override
  void update(
    void Function(InspectionDictionaryUnlinkObjectParameterRequestBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryUnlinkObjectParameterRequest build() => _build();

  _$InspectionDictionaryUnlinkObjectParameterRequest _build() {
    final _$result =
        _$v ??
        _$InspectionDictionaryUnlinkObjectParameterRequest._(
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'InspectionDictionaryUnlinkObjectParameterRequest',
            'inspectionObjectCode',
          ),
          inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
            inspectionParameterCode,
            r'InspectionDictionaryUnlinkObjectParameterRequest',
            'inspectionParameterCode',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
