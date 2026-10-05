// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_catalog_entry_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCatalogEntryRequest extends UpdateCatalogEntryRequest {
  @override
  final String? inspectionObjectCode;
  @override
  final String? name;
  @override
  final String? remark;
  @override
  final int? sortOrder;

  factory _$UpdateCatalogEntryRequest([
    void Function(UpdateCatalogEntryRequestBuilder)? updates,
  ]) => (UpdateCatalogEntryRequestBuilder()..update(updates))._build();

  _$UpdateCatalogEntryRequest._({
    this.inspectionObjectCode,
    this.name,
    this.remark,
    this.sortOrder,
  }) : super._();
  @override
  UpdateCatalogEntryRequest rebuild(
    void Function(UpdateCatalogEntryRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCatalogEntryRequestBuilder toBuilder() =>
      UpdateCatalogEntryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCatalogEntryRequest &&
        inspectionObjectCode == other.inspectionObjectCode &&
        name == other.name &&
        remark == other.remark &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCatalogEntryRequest')
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('name', name)
          ..add('remark', remark)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class UpdateCatalogEntryRequestBuilder
    implements
        Builder<UpdateCatalogEntryRequest, UpdateCatalogEntryRequestBuilder> {
  _$UpdateCatalogEntryRequest? _$v;

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

  UpdateCatalogEntryRequestBuilder() {
    UpdateCatalogEntryRequest._defaults(this);
  }

  UpdateCatalogEntryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _name = $v.name;
      _remark = $v.remark;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCatalogEntryRequest other) {
    _$v = other as _$UpdateCatalogEntryRequest;
  }

  @override
  void update(void Function(UpdateCatalogEntryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCatalogEntryRequest build() => _build();

  _$UpdateCatalogEntryRequest _build() {
    final _$result =
        _$v ??
        _$UpdateCatalogEntryRequest._(
          inspectionObjectCode: inspectionObjectCode,
          name: name,
          remark: remark,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
