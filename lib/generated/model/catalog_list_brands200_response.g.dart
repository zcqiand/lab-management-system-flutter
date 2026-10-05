// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_list_brands200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogListBrands200Response extends CatalogListBrands200Response {
  @override
  final BuiltList<InspectionBrand> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$CatalogListBrands200Response([
    void Function(CatalogListBrands200ResponseBuilder)? updates,
  ]) => (CatalogListBrands200ResponseBuilder()..update(updates))._build();

  _$CatalogListBrands200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  CatalogListBrands200Response rebuild(
    void Function(CatalogListBrands200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CatalogListBrands200ResponseBuilder toBuilder() =>
      CatalogListBrands200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogListBrands200Response &&
        items == other.items &&
        page == other.page &&
        pageSize == other.pageSize &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CatalogListBrands200Response')
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class CatalogListBrands200ResponseBuilder
    implements
        Builder<
          CatalogListBrands200Response,
          CatalogListBrands200ResponseBuilder
        > {
  _$CatalogListBrands200Response? _$v;

  ListBuilder<InspectionBrand>? _items;
  ListBuilder<InspectionBrand> get items =>
      _$this._items ??= ListBuilder<InspectionBrand>();
  set items(ListBuilder<InspectionBrand>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  CatalogListBrands200ResponseBuilder() {
    CatalogListBrands200Response._defaults(this);
  }

  CatalogListBrands200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _page = $v.page;
      _pageSize = $v.pageSize;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogListBrands200Response other) {
    _$v = other as _$CatalogListBrands200Response;
  }

  @override
  void update(void Function(CatalogListBrands200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatalogListBrands200Response build() => _build();

  _$CatalogListBrands200Response _build() {
    _$CatalogListBrands200Response _$result;
    try {
      _$result =
          _$v ??
          _$CatalogListBrands200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'CatalogListBrands200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'CatalogListBrands200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'CatalogListBrands200Response',
              'total',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CatalogListBrands200Response',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
