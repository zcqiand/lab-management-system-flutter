// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_list_object_parameter_links200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryListObjectParameterLinks200Response
    extends InspectionDictionaryListObjectParameterLinks200Response {
  @override
  final BuiltList<ObjectParameterLink> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$InspectionDictionaryListObjectParameterLinks200Response([
    void Function(
      InspectionDictionaryListObjectParameterLinks200ResponseBuilder,
    )?
    updates,
  ]) =>
      (InspectionDictionaryListObjectParameterLinks200ResponseBuilder()
            ..update(updates))
          ._build();

  _$InspectionDictionaryListObjectParameterLinks200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  InspectionDictionaryListObjectParameterLinks200Response rebuild(
    void Function(
      InspectionDictionaryListObjectParameterLinks200ResponseBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryListObjectParameterLinks200ResponseBuilder toBuilder() =>
      InspectionDictionaryListObjectParameterLinks200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryListObjectParameterLinks200Response &&
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
            r'InspectionDictionaryListObjectParameterLinks200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class InspectionDictionaryListObjectParameterLinks200ResponseBuilder
    implements
        Builder<
          InspectionDictionaryListObjectParameterLinks200Response,
          InspectionDictionaryListObjectParameterLinks200ResponseBuilder
        > {
  _$InspectionDictionaryListObjectParameterLinks200Response? _$v;

  ListBuilder<ObjectParameterLink>? _items;
  ListBuilder<ObjectParameterLink> get items =>
      _$this._items ??= ListBuilder<ObjectParameterLink>();
  set items(ListBuilder<ObjectParameterLink>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  InspectionDictionaryListObjectParameterLinks200ResponseBuilder() {
    InspectionDictionaryListObjectParameterLinks200Response._defaults(this);
  }

  InspectionDictionaryListObjectParameterLinks200ResponseBuilder get _$this {
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
  void replace(InspectionDictionaryListObjectParameterLinks200Response other) {
    _$v = other as _$InspectionDictionaryListObjectParameterLinks200Response;
  }

  @override
  void update(
    void Function(
      InspectionDictionaryListObjectParameterLinks200ResponseBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryListObjectParameterLinks200Response build() => _build();

  _$InspectionDictionaryListObjectParameterLinks200Response _build() {
    _$InspectionDictionaryListObjectParameterLinks200Response _$result;
    try {
      _$result =
          _$v ??
          _$InspectionDictionaryListObjectParameterLinks200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'InspectionDictionaryListObjectParameterLinks200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'InspectionDictionaryListObjectParameterLinks200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'InspectionDictionaryListObjectParameterLinks200Response',
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
          r'InspectionDictionaryListObjectParameterLinks200Response',
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
