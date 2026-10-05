// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_list_object_standard_links200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryListObjectStandardLinks200Response
    extends InspectionDictionaryListObjectStandardLinks200Response {
  @override
  final BuiltList<ObjectStandardLink> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$InspectionDictionaryListObjectStandardLinks200Response([
    void Function(
      InspectionDictionaryListObjectStandardLinks200ResponseBuilder,
    )?
    updates,
  ]) =>
      (InspectionDictionaryListObjectStandardLinks200ResponseBuilder()
            ..update(updates))
          ._build();

  _$InspectionDictionaryListObjectStandardLinks200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  InspectionDictionaryListObjectStandardLinks200Response rebuild(
    void Function(InspectionDictionaryListObjectStandardLinks200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryListObjectStandardLinks200ResponseBuilder toBuilder() =>
      InspectionDictionaryListObjectStandardLinks200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryListObjectStandardLinks200Response &&
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
    return (newBuiltValueToStringHelper(
            r'InspectionDictionaryListObjectStandardLinks200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class InspectionDictionaryListObjectStandardLinks200ResponseBuilder
    implements
        Builder<
          InspectionDictionaryListObjectStandardLinks200Response,
          InspectionDictionaryListObjectStandardLinks200ResponseBuilder
        > {
  _$InspectionDictionaryListObjectStandardLinks200Response? _$v;

  ListBuilder<ObjectStandardLink>? _items;
  ListBuilder<ObjectStandardLink> get items =>
      _$this._items ??= ListBuilder<ObjectStandardLink>();
  set items(ListBuilder<ObjectStandardLink>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  InspectionDictionaryListObjectStandardLinks200ResponseBuilder() {
    InspectionDictionaryListObjectStandardLinks200Response._defaults(this);
  }

  InspectionDictionaryListObjectStandardLinks200ResponseBuilder get _$this {
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
  void replace(InspectionDictionaryListObjectStandardLinks200Response other) {
    _$v = other as _$InspectionDictionaryListObjectStandardLinks200Response;
  }

  @override
  void update(
    void Function(
      InspectionDictionaryListObjectStandardLinks200ResponseBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryListObjectStandardLinks200Response build() => _build();

  _$InspectionDictionaryListObjectStandardLinks200Response _build() {
    _$InspectionDictionaryListObjectStandardLinks200Response _$result;
    try {
      _$result =
          _$v ??
          _$InspectionDictionaryListObjectStandardLinks200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'InspectionDictionaryListObjectStandardLinks200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'InspectionDictionaryListObjectStandardLinks200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'InspectionDictionaryListObjectStandardLinks200Response',
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
          r'InspectionDictionaryListObjectStandardLinks200Response',
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
