// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inspection_standard_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateInspectionStandardRequest
    extends UpdateInspectionStandardRequest {
  @override
  final String? name;
  @override
  final String? version;
  @override
  final InspectionStandardStatus? status;
  @override
  final String? sourceDocumentId;
  @override
  final String? sourceHash;
  @override
  final int? sortOrder;

  factory _$UpdateInspectionStandardRequest([
    void Function(UpdateInspectionStandardRequestBuilder)? updates,
  ]) => (UpdateInspectionStandardRequestBuilder()..update(updates))._build();

  _$UpdateInspectionStandardRequest._({
    this.name,
    this.version,
    this.status,
    this.sourceDocumentId,
    this.sourceHash,
    this.sortOrder,
  }) : super._();
  @override
  UpdateInspectionStandardRequest rebuild(
    void Function(UpdateInspectionStandardRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateInspectionStandardRequestBuilder toBuilder() =>
      UpdateInspectionStandardRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateInspectionStandardRequest &&
        name == other.name &&
        version == other.version &&
        status == other.status &&
        sourceDocumentId == other.sourceDocumentId &&
        sourceHash == other.sourceHash &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sourceDocumentId.hashCode);
    _$hash = $jc(_$hash, sourceHash.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateInspectionStandardRequest')
          ..add('name', name)
          ..add('version', version)
          ..add('status', status)
          ..add('sourceDocumentId', sourceDocumentId)
          ..add('sourceHash', sourceHash)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class UpdateInspectionStandardRequestBuilder
    implements
        Builder<
          UpdateInspectionStandardRequest,
          UpdateInspectionStandardRequestBuilder
        > {
  _$UpdateInspectionStandardRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  InspectionStandardStatus? _status;
  InspectionStandardStatus? get status => _$this._status;
  set status(InspectionStandardStatus? status) => _$this._status = status;

  String? _sourceDocumentId;
  String? get sourceDocumentId => _$this._sourceDocumentId;
  set sourceDocumentId(String? sourceDocumentId) =>
      _$this._sourceDocumentId = sourceDocumentId;

  String? _sourceHash;
  String? get sourceHash => _$this._sourceHash;
  set sourceHash(String? sourceHash) => _$this._sourceHash = sourceHash;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  UpdateInspectionStandardRequestBuilder() {
    UpdateInspectionStandardRequest._defaults(this);
  }

  UpdateInspectionStandardRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _version = $v.version;
      _status = $v.status;
      _sourceDocumentId = $v.sourceDocumentId;
      _sourceHash = $v.sourceHash;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateInspectionStandardRequest other) {
    _$v = other as _$UpdateInspectionStandardRequest;
  }

  @override
  void update(void Function(UpdateInspectionStandardRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateInspectionStandardRequest build() => _build();

  _$UpdateInspectionStandardRequest _build() {
    final _$result =
        _$v ??
        _$UpdateInspectionStandardRequest._(
          name: name,
          version: version,
          status: status,
          sourceDocumentId: sourceDocumentId,
          sourceHash: sourceHash,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
