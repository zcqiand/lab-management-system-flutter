// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_catalog_entry_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCatalogEntryRequest extends CreateCatalogEntryRequest {
  @override
  final String code;
  @override
  final String? inspectionObjectCode;
  @override
  final String name;
  @override
  final String? remark;
  @override
  final int? sortOrder;

  factory _$CreateCatalogEntryRequest([
    void Function(CreateCatalogEntryRequestBuilder)? updates,
  ]) => (CreateCatalogEntryRequestBuilder()..update(updates))._build();

  _$CreateCatalogEntryRequest._({
    required this.code,
    this.inspectionObjectCode,
    required this.name,
    this.remark,
    this.sortOrder,
  }) : super._();
  @override
  CreateCatalogEntryRequest rebuild(
    void Function(CreateCatalogEntryRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateCatalogEntryRequestBuilder toBuilder() =>
      CreateCatalogEntryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCatalogEntryRequest &&
        code == other.code &&
        inspectionObjectCode == other.inspectionObjectCode &&
        name == other.name &&
        remark == other.remark &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCatalogEntryRequest')
          ..add('code', code)
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('name', name)
          ..add('remark', remark)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class CreateCatalogEntryRequestBuilder
    implements
        Builder<CreateCatalogEntryRequest, CreateCatalogEntryRequestBuilder> {
  _$CreateCatalogEntryRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  CreateCatalogEntryRequestBuilder() {
    CreateCatalogEntryRequest._defaults(this);
  }

  CreateCatalogEntryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _inspectionObjectCode = $v.inspectionObjectCode;
      _name = $v.name;
      _remark = $v.remark;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCatalogEntryRequest other) {
    _$v = other as _$CreateCatalogEntryRequest;
  }

  @override
  void update(void Function(CreateCatalogEntryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCatalogEntryRequest build() => _build();

  _$CreateCatalogEntryRequest _build() {
    final _$result =
        _$v ??
        _$CreateCatalogEntryRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'CreateCatalogEntryRequest',
            'code',
          ),
          inspectionObjectCode: inspectionObjectCode,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateCatalogEntryRequest',
            'name',
          ),
          remark: remark,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
