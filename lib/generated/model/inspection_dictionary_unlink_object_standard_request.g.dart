// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_unlink_object_standard_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryUnlinkObjectStandardRequest
    extends InspectionDictionaryUnlinkObjectStandardRequest {
  @override
  final String inspectionObjectCode;
  @override
  final String inspectionStandardCode;
  @override
  final InspectionStandardRole role;

  factory _$InspectionDictionaryUnlinkObjectStandardRequest([
    void Function(InspectionDictionaryUnlinkObjectStandardRequestBuilder)?
    updates,
  ]) =>
      (InspectionDictionaryUnlinkObjectStandardRequestBuilder()
            ..update(updates))
          ._build();

  _$InspectionDictionaryUnlinkObjectStandardRequest._({
    required this.inspectionObjectCode,
    required this.inspectionStandardCode,
    required this.role,
  }) : super._();
  @override
  InspectionDictionaryUnlinkObjectStandardRequest rebuild(
    void Function(InspectionDictionaryUnlinkObjectStandardRequestBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryUnlinkObjectStandardRequestBuilder toBuilder() =>
      InspectionDictionaryUnlinkObjectStandardRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryUnlinkObjectStandardRequest &&
        inspectionObjectCode == other.inspectionObjectCode &&
        inspectionStandardCode == other.inspectionStandardCode &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, inspectionStandardCode.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'InspectionDictionaryUnlinkObjectStandardRequest',
          )
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('inspectionStandardCode', inspectionStandardCode)
          ..add('role', role))
        .toString();
  }
}

class InspectionDictionaryUnlinkObjectStandardRequestBuilder
    implements
        Builder<
          InspectionDictionaryUnlinkObjectStandardRequest,
          InspectionDictionaryUnlinkObjectStandardRequestBuilder
        > {
  _$InspectionDictionaryUnlinkObjectStandardRequest? _$v;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _inspectionStandardCode;
  String? get inspectionStandardCode => _$this._inspectionStandardCode;
  set inspectionStandardCode(String? inspectionStandardCode) =>
      _$this._inspectionStandardCode = inspectionStandardCode;

  InspectionStandardRole? _role;
  InspectionStandardRole? get role => _$this._role;
  set role(InspectionStandardRole? role) => _$this._role = role;

  InspectionDictionaryUnlinkObjectStandardRequestBuilder() {
    InspectionDictionaryUnlinkObjectStandardRequest._defaults(this);
  }

  InspectionDictionaryUnlinkObjectStandardRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _inspectionStandardCode = $v.inspectionStandardCode;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionDictionaryUnlinkObjectStandardRequest other) {
    _$v = other as _$InspectionDictionaryUnlinkObjectStandardRequest;
  }

  @override
  void update(
    void Function(InspectionDictionaryUnlinkObjectStandardRequestBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryUnlinkObjectStandardRequest build() => _build();

  _$InspectionDictionaryUnlinkObjectStandardRequest _build() {
    final _$result =
        _$v ??
        _$InspectionDictionaryUnlinkObjectStandardRequest._(
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'InspectionDictionaryUnlinkObjectStandardRequest',
            'inspectionObjectCode',
          ),
          inspectionStandardCode: BuiltValueNullFieldError.checkNotNull(
            inspectionStandardCode,
            r'InspectionDictionaryUnlinkObjectStandardRequest',
            'inspectionStandardCode',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'InspectionDictionaryUnlinkObjectStandardRequest',
            'role',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
