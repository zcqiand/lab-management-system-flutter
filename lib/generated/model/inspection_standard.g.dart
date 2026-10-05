// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_standard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionStandard extends InspectionStandard {
  @override
  final String code;
  @override
  final String name;
  @override
  final String? version;
  @override
  final InspectionStandardStatus status;
  @override
  final String? sourceDocumentId;
  @override
  final String? sourceHash;
  @override
  final int sortOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$InspectionStandard([
    void Function(InspectionStandardBuilder)? updates,
  ]) => (InspectionStandardBuilder()..update(updates))._build();

  _$InspectionStandard._({
    required this.code,
    required this.name,
    this.version,
    required this.status,
    this.sourceDocumentId,
    this.sourceHash,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  InspectionStandard rebuild(
    void Function(InspectionStandardBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionStandardBuilder toBuilder() =>
      InspectionStandardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionStandard &&
        code == other.code &&
        name == other.name &&
        version == other.version &&
        status == other.status &&
        sourceDocumentId == other.sourceDocumentId &&
        sourceHash == other.sourceHash &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
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
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectionStandard')
          ..add('code', code)
          ..add('name', name)
          ..add('version', version)
          ..add('status', status)
          ..add('sourceDocumentId', sourceDocumentId)
          ..add('sourceHash', sourceHash)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class InspectionStandardBuilder
    implements Builder<InspectionStandard, InspectionStandardBuilder> {
  _$InspectionStandard? _$v;

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

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  InspectionStandardBuilder() {
    InspectionStandard._defaults(this);
  }

  InspectionStandardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _version = $v.version;
      _status = $v.status;
      _sourceDocumentId = $v.sourceDocumentId;
      _sourceHash = $v.sourceHash;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionStandard other) {
    _$v = other as _$InspectionStandard;
  }

  @override
  void update(void Function(InspectionStandardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectionStandard build() => _build();

  _$InspectionStandard _build() {
    final _$result =
        _$v ??
        _$InspectionStandard._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'InspectionStandard',
            'code',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'InspectionStandard',
            'name',
          ),
          version: version,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'InspectionStandard',
            'status',
          ),
          sourceDocumentId: sourceDocumentId,
          sourceHash: sourceHash,
          sortOrder: BuiltValueNullFieldError.checkNotNull(
            sortOrder,
            r'InspectionStandard',
            'sortOrder',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'InspectionStandard',
            'createdAt',
          ),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
            updatedAt,
            r'InspectionStandard',
            'updatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
