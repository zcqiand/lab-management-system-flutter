// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipts_list_receipts200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReceiptsListReceipts200Response
    extends ReceiptsListReceipts200Response {
  @override
  final BuiltList<SampleReceipt> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$ReceiptsListReceipts200Response([
    void Function(ReceiptsListReceipts200ResponseBuilder)? updates,
  ]) => (ReceiptsListReceipts200ResponseBuilder()..update(updates))._build();

  _$ReceiptsListReceipts200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  ReceiptsListReceipts200Response rebuild(
    void Function(ReceiptsListReceipts200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReceiptsListReceipts200ResponseBuilder toBuilder() =>
      ReceiptsListReceipts200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceiptsListReceipts200Response &&
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
    return (newBuiltValueToStringHelper(r'ReceiptsListReceipts200Response')
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class ReceiptsListReceipts200ResponseBuilder
    implements
        Builder<
          ReceiptsListReceipts200Response,
          ReceiptsListReceipts200ResponseBuilder
        > {
  _$ReceiptsListReceipts200Response? _$v;

  ListBuilder<SampleReceipt>? _items;
  ListBuilder<SampleReceipt> get items =>
      _$this._items ??= ListBuilder<SampleReceipt>();
  set items(ListBuilder<SampleReceipt>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ReceiptsListReceipts200ResponseBuilder() {
    ReceiptsListReceipts200Response._defaults(this);
  }

  ReceiptsListReceipts200ResponseBuilder get _$this {
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
  void replace(ReceiptsListReceipts200Response other) {
    _$v = other as _$ReceiptsListReceipts200Response;
  }

  @override
  void update(void Function(ReceiptsListReceipts200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceiptsListReceipts200Response build() => _build();

  _$ReceiptsListReceipts200Response _build() {
    _$ReceiptsListReceipts200Response _$result;
    try {
      _$result =
          _$v ??
          _$ReceiptsListReceipts200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'ReceiptsListReceipts200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'ReceiptsListReceipts200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'ReceiptsListReceipts200Response',
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
          r'ReceiptsListReceipts200Response',
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
