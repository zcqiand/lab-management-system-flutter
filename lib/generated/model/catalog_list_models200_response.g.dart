// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_list_models200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogListModels200Response extends CatalogListModels200Response {
  @override
  final BuiltList<InspectionModel> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$CatalogListModels200Response([
    void Function(CatalogListModels200ResponseBuilder)? updates,
  ]) => (CatalogListModels200ResponseBuilder()..update(updates))._build();

  _$CatalogListModels200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  CatalogListModels200Response rebuild(
    void Function(CatalogListModels200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CatalogListModels200ResponseBuilder toBuilder() =>
      CatalogListModels200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogListModels200Response &&
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
    return (newBuiltValueToStringHelper(r'CatalogListModels200Response')
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class CatalogListModels200ResponseBuilder
    implements
        Builder<
          CatalogListModels200Response,
          CatalogListModels200ResponseBuilder
        > {
  _$CatalogListModels200Response? _$v;

  ListBuilder<InspectionModel>? _items;
  ListBuilder<InspectionModel> get items =>
      _$this._items ??= ListBuilder<InspectionModel>();
  set items(ListBuilder<InspectionModel>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  CatalogListModels200ResponseBuilder() {
    CatalogListModels200Response._defaults(this);
  }

  CatalogListModels200ResponseBuilder get _$this {
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
  void replace(CatalogListModels200Response other) {
    _$v = other as _$CatalogListModels200Response;
  }

  @override
  void update(void Function(CatalogListModels200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatalogListModels200Response build() => _build();

  _$CatalogListModels200Response _build() {
    _$CatalogListModels200Response _$result;
    try {
      _$result =
          _$v ??
          _$CatalogListModels200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'CatalogListModels200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'CatalogListModels200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'CatalogListModels200Response',
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
          r'CatalogListModels200Response',
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
