// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_list_standards200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryListStandards200Response
    extends InspectionDictionaryListStandards200Response {
  @override
  final BuiltList<InspectionStandard> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$InspectionDictionaryListStandards200Response([
    void Function(InspectionDictionaryListStandards200ResponseBuilder)? updates,
  ]) => (InspectionDictionaryListStandards200ResponseBuilder()..update(updates))
      ._build();

  _$InspectionDictionaryListStandards200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  InspectionDictionaryListStandards200Response rebuild(
    void Function(InspectionDictionaryListStandards200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryListStandards200ResponseBuilder toBuilder() =>
      InspectionDictionaryListStandards200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryListStandards200Response &&
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
            r'InspectionDictionaryListStandards200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class InspectionDictionaryListStandards200ResponseBuilder
    implements
        Builder<
          InspectionDictionaryListStandards200Response,
          InspectionDictionaryListStandards200ResponseBuilder
        > {
  _$InspectionDictionaryListStandards200Response? _$v;

  ListBuilder<InspectionStandard>? _items;
  ListBuilder<InspectionStandard> get items =>
      _$this._items ??= ListBuilder<InspectionStandard>();
  set items(ListBuilder<InspectionStandard>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  InspectionDictionaryListStandards200ResponseBuilder() {
    InspectionDictionaryListStandards200Response._defaults(this);
  }

  InspectionDictionaryListStandards200ResponseBuilder get _$this {
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
  void replace(InspectionDictionaryListStandards200Response other) {
    _$v = other as _$InspectionDictionaryListStandards200Response;
  }

  @override
  void update(
    void Function(InspectionDictionaryListStandards200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryListStandards200Response build() => _build();

  _$InspectionDictionaryListStandards200Response _build() {
    _$InspectionDictionaryListStandards200Response _$result;
    try {
      _$result =
          _$v ??
          _$InspectionDictionaryListStandards200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'InspectionDictionaryListStandards200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'InspectionDictionaryListStandards200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'InspectionDictionaryListStandards200Response',
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
          r'InspectionDictionaryListStandards200Response',
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
