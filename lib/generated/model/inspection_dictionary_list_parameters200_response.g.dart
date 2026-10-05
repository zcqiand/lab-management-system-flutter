// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_list_parameters200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryListParameters200Response
    extends InspectionDictionaryListParameters200Response {
  @override
  final BuiltList<InspectionParameter> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$InspectionDictionaryListParameters200Response([
    void Function(InspectionDictionaryListParameters200ResponseBuilder)?
    updates,
  ]) =>
      (InspectionDictionaryListParameters200ResponseBuilder()..update(updates))
          ._build();

  _$InspectionDictionaryListParameters200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  InspectionDictionaryListParameters200Response rebuild(
    void Function(InspectionDictionaryListParameters200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryListParameters200ResponseBuilder toBuilder() =>
      InspectionDictionaryListParameters200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryListParameters200Response &&
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
            r'InspectionDictionaryListParameters200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class InspectionDictionaryListParameters200ResponseBuilder
    implements
        Builder<
          InspectionDictionaryListParameters200Response,
          InspectionDictionaryListParameters200ResponseBuilder
        > {
  _$InspectionDictionaryListParameters200Response? _$v;

  ListBuilder<InspectionParameter>? _items;
  ListBuilder<InspectionParameter> get items =>
      _$this._items ??= ListBuilder<InspectionParameter>();
  set items(ListBuilder<InspectionParameter>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  InspectionDictionaryListParameters200ResponseBuilder() {
    InspectionDictionaryListParameters200Response._defaults(this);
  }

  InspectionDictionaryListParameters200ResponseBuilder get _$this {
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
  void replace(InspectionDictionaryListParameters200Response other) {
    _$v = other as _$InspectionDictionaryListParameters200Response;
  }

  @override
  void update(
    void Function(InspectionDictionaryListParameters200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryListParameters200Response build() => _build();

  _$InspectionDictionaryListParameters200Response _build() {
    _$InspectionDictionaryListParameters200Response _$result;
    try {
      _$result =
          _$v ??
          _$InspectionDictionaryListParameters200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'InspectionDictionaryListParameters200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'InspectionDictionaryListParameters200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'InspectionDictionaryListParameters200Response',
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
          r'InspectionDictionaryListParameters200Response',
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
