// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_records_list_test_records200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestRecordsListTestRecords200Response
    extends TestRecordsListTestRecords200Response {
  @override
  final BuiltList<TestRecord> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$TestRecordsListTestRecords200Response([
    void Function(TestRecordsListTestRecords200ResponseBuilder)? updates,
  ]) => (TestRecordsListTestRecords200ResponseBuilder()..update(updates))
      ._build();

  _$TestRecordsListTestRecords200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  TestRecordsListTestRecords200Response rebuild(
    void Function(TestRecordsListTestRecords200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TestRecordsListTestRecords200ResponseBuilder toBuilder() =>
      TestRecordsListTestRecords200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRecordsListTestRecords200Response &&
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
            r'TestRecordsListTestRecords200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class TestRecordsListTestRecords200ResponseBuilder
    implements
        Builder<
          TestRecordsListTestRecords200Response,
          TestRecordsListTestRecords200ResponseBuilder
        > {
  _$TestRecordsListTestRecords200Response? _$v;

  ListBuilder<TestRecord>? _items;
  ListBuilder<TestRecord> get items =>
      _$this._items ??= ListBuilder<TestRecord>();
  set items(ListBuilder<TestRecord>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  TestRecordsListTestRecords200ResponseBuilder() {
    TestRecordsListTestRecords200Response._defaults(this);
  }

  TestRecordsListTestRecords200ResponseBuilder get _$this {
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
  void replace(TestRecordsListTestRecords200Response other) {
    _$v = other as _$TestRecordsListTestRecords200Response;
  }

  @override
  void update(
    void Function(TestRecordsListTestRecords200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TestRecordsListTestRecords200Response build() => _build();

  _$TestRecordsListTestRecords200Response _build() {
    _$TestRecordsListTestRecords200Response _$result;
    try {
      _$result =
          _$v ??
          _$TestRecordsListTestRecords200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'TestRecordsListTestRecords200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'TestRecordsListTestRecords200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'TestRecordsListTestRecords200Response',
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
          r'TestRecordsListTestRecords200Response',
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
