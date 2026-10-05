// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_inspection_standard_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInspectionStandardRequest
    extends CreateInspectionStandardRequest {
  @override
  final String code;
  @override
  final String name;
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

  factory _$CreateInspectionStandardRequest([
    void Function(CreateInspectionStandardRequestBuilder)? updates,
  ]) => (CreateInspectionStandardRequestBuilder()..update(updates))._build();

  _$CreateInspectionStandardRequest._({
    required this.code,
    required this.name,
    this.version,
    this.status,
    this.sourceDocumentId,
    this.sourceHash,
    this.sortOrder,
  }) : super._();
  @override
  CreateInspectionStandardRequest rebuild(
    void Function(CreateInspectionStandardRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateInspectionStandardRequestBuilder toBuilder() =>
      CreateInspectionStandardRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInspectionStandardRequest &&
        code == other.code &&
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
    _$hash = $jc(_$hash, code.hashCode);
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
    return (newBuiltValueToStringHelper(r'CreateInspectionStandardRequest')
          ..add('code', code)
          ..add('name', name)
          ..add('version', version)
          ..add('status', status)
          ..add('sourceDocumentId', sourceDocumentId)
          ..add('sourceHash', sourceHash)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class CreateInspectionStandardRequestBuilder
    implements
        Builder<
          CreateInspectionStandardRequest,
          CreateInspectionStandardRequestBuilder
        > {
  _$CreateInspectionStandardRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

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

  CreateInspectionStandardRequestBuilder() {
    CreateInspectionStandardRequest._defaults(this);
  }

  CreateInspectionStandardRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
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
  void replace(CreateInspectionStandardRequest other) {
    _$v = other as _$CreateInspectionStandardRequest;
  }

  @override
  void update(void Function(CreateInspectionStandardRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInspectionStandardRequest build() => _build();

  _$CreateInspectionStandardRequest _build() {
    final _$result =
        _$v ??
        _$CreateInspectionStandardRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'CreateInspectionStandardRequest',
            'code',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateInspectionStandardRequest',
            'name',
          ),
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
