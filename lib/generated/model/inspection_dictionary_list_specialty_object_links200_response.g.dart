// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_list_specialty_object_links200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryListSpecialtyObjectLinks200Response
    extends InspectionDictionaryListSpecialtyObjectLinks200Response {
  @override
  final BuiltList<SpecialtyObjectLink> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$InspectionDictionaryListSpecialtyObjectLinks200Response([
    void Function(
      InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder,
    )?
    updates,
  ]) =>
      (InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder()
            ..update(updates))
          ._build();

  _$InspectionDictionaryListSpecialtyObjectLinks200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  InspectionDictionaryListSpecialtyObjectLinks200Response rebuild(
    void Function(
      InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder toBuilder() =>
      InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryListSpecialtyObjectLinks200Response &&
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
            r'InspectionDictionaryListSpecialtyObjectLinks200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder
    implements
        Builder<
          InspectionDictionaryListSpecialtyObjectLinks200Response,
          InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder
        > {
  _$InspectionDictionaryListSpecialtyObjectLinks200Response? _$v;

  ListBuilder<SpecialtyObjectLink>? _items;
  ListBuilder<SpecialtyObjectLink> get items =>
      _$this._items ??= ListBuilder<SpecialtyObjectLink>();
  set items(ListBuilder<SpecialtyObjectLink>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder() {
    InspectionDictionaryListSpecialtyObjectLinks200Response._defaults(this);
  }

  InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder get _$this {
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
  void replace(InspectionDictionaryListSpecialtyObjectLinks200Response other) {
    _$v = other as _$InspectionDictionaryListSpecialtyObjectLinks200Response;
  }

  @override
  void update(
    void Function(
      InspectionDictionaryListSpecialtyObjectLinks200ResponseBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryListSpecialtyObjectLinks200Response build() => _build();

  _$InspectionDictionaryListSpecialtyObjectLinks200Response _build() {
    _$InspectionDictionaryListSpecialtyObjectLinks200Response _$result;
    try {
      _$result =
          _$v ??
          _$InspectionDictionaryListSpecialtyObjectLinks200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'InspectionDictionaryListSpecialtyObjectLinks200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'InspectionDictionaryListSpecialtyObjectLinks200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'InspectionDictionaryListSpecialtyObjectLinks200Response',
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
          r'InspectionDictionaryListSpecialtyObjectLinks200Response',
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
