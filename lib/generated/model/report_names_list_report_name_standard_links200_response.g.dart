// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_names_list_report_name_standard_links200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNamesListReportNameStandardLinks200Response
    extends ReportNamesListReportNameStandardLinks200Response {
  @override
  final BuiltList<ReportNameStandardLink> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$ReportNamesListReportNameStandardLinks200Response([
    void Function(ReportNamesListReportNameStandardLinks200ResponseBuilder)?
    updates,
  ]) =>
      (ReportNamesListReportNameStandardLinks200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ReportNamesListReportNameStandardLinks200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  ReportNamesListReportNameStandardLinks200Response rebuild(
    void Function(ReportNamesListReportNameStandardLinks200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNamesListReportNameStandardLinks200ResponseBuilder toBuilder() =>
      ReportNamesListReportNameStandardLinks200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNamesListReportNameStandardLinks200Response &&
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
            r'ReportNamesListReportNameStandardLinks200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class ReportNamesListReportNameStandardLinks200ResponseBuilder
    implements
        Builder<
          ReportNamesListReportNameStandardLinks200Response,
          ReportNamesListReportNameStandardLinks200ResponseBuilder
        > {
  _$ReportNamesListReportNameStandardLinks200Response? _$v;

  ListBuilder<ReportNameStandardLink>? _items;
  ListBuilder<ReportNameStandardLink> get items =>
      _$this._items ??= ListBuilder<ReportNameStandardLink>();
  set items(ListBuilder<ReportNameStandardLink>? items) =>
      _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ReportNamesListReportNameStandardLinks200ResponseBuilder() {
    ReportNamesListReportNameStandardLinks200Response._defaults(this);
  }

  ReportNamesListReportNameStandardLinks200ResponseBuilder get _$this {
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
  void replace(ReportNamesListReportNameStandardLinks200Response other) {
    _$v = other as _$ReportNamesListReportNameStandardLinks200Response;
  }

  @override
  void update(
    void Function(ReportNamesListReportNameStandardLinks200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ReportNamesListReportNameStandardLinks200Response build() => _build();

  _$ReportNamesListReportNameStandardLinks200Response _build() {
    _$ReportNamesListReportNameStandardLinks200Response _$result;
    try {
      _$result =
          _$v ??
          _$ReportNamesListReportNameStandardLinks200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'ReportNamesListReportNameStandardLinks200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'ReportNamesListReportNameStandardLinks200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'ReportNamesListReportNameStandardLinks200Response',
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
          r'ReportNamesListReportNameStandardLinks200Response',
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
