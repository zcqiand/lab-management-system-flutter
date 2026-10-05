// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_names_list_object_report_name_links200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNamesListObjectReportNameLinks200Response
    extends ReportNamesListObjectReportNameLinks200Response {
  @override
  final BuiltList<ObjectReportNameLink> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$ReportNamesListObjectReportNameLinks200Response([
    void Function(ReportNamesListObjectReportNameLinks200ResponseBuilder)?
    updates,
  ]) =>
      (ReportNamesListObjectReportNameLinks200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ReportNamesListObjectReportNameLinks200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  ReportNamesListObjectReportNameLinks200Response rebuild(
    void Function(ReportNamesListObjectReportNameLinks200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNamesListObjectReportNameLinks200ResponseBuilder toBuilder() =>
      ReportNamesListObjectReportNameLinks200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNamesListObjectReportNameLinks200Response &&
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
            r'ReportNamesListObjectReportNameLinks200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class ReportNamesListObjectReportNameLinks200ResponseBuilder
    implements
        Builder<
          ReportNamesListObjectReportNameLinks200Response,
          ReportNamesListObjectReportNameLinks200ResponseBuilder
        > {
  _$ReportNamesListObjectReportNameLinks200Response? _$v;

  ListBuilder<ObjectReportNameLink>? _items;
  ListBuilder<ObjectReportNameLink> get items =>
      _$this._items ??= ListBuilder<ObjectReportNameLink>();
  set items(ListBuilder<ObjectReportNameLink>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ReportNamesListObjectReportNameLinks200ResponseBuilder() {
    ReportNamesListObjectReportNameLinks200Response._defaults(this);
  }

  ReportNamesListObjectReportNameLinks200ResponseBuilder get _$this {
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
  void replace(ReportNamesListObjectReportNameLinks200Response other) {
    _$v = other as _$ReportNamesListObjectReportNameLinks200Response;
  }

  @override
  void update(
    void Function(ReportNamesListObjectReportNameLinks200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ReportNamesListObjectReportNameLinks200Response build() => _build();

  _$ReportNamesListObjectReportNameLinks200Response _build() {
    _$ReportNamesListObjectReportNameLinks200Response _$result;
    try {
      _$result =
          _$v ??
          _$ReportNamesListObjectReportNameLinks200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'ReportNamesListObjectReportNameLinks200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'ReportNamesListObjectReportNameLinks200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'ReportNamesListObjectReportNameLinks200Response',
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
          r'ReportNamesListObjectReportNameLinks200Response',
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
