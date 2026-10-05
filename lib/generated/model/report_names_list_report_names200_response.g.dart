// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_names_list_report_names200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNamesListReportNames200Response
    extends ReportNamesListReportNames200Response {
  @override
  final BuiltList<InspectionReportName> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$ReportNamesListReportNames200Response([
    void Function(ReportNamesListReportNames200ResponseBuilder)? updates,
  ]) => (ReportNamesListReportNames200ResponseBuilder()..update(updates))
      ._build();

  _$ReportNamesListReportNames200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  ReportNamesListReportNames200Response rebuild(
    void Function(ReportNamesListReportNames200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNamesListReportNames200ResponseBuilder toBuilder() =>
      ReportNamesListReportNames200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNamesListReportNames200Response &&
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
            r'ReportNamesListReportNames200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class ReportNamesListReportNames200ResponseBuilder
    implements
        Builder<
          ReportNamesListReportNames200Response,
          ReportNamesListReportNames200ResponseBuilder
        > {
  _$ReportNamesListReportNames200Response? _$v;

  ListBuilder<InspectionReportName>? _items;
  ListBuilder<InspectionReportName> get items =>
      _$this._items ??= ListBuilder<InspectionReportName>();
  set items(ListBuilder<InspectionReportName>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ReportNamesListReportNames200ResponseBuilder() {
    ReportNamesListReportNames200Response._defaults(this);
  }

  ReportNamesListReportNames200ResponseBuilder get _$this {
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
  void replace(ReportNamesListReportNames200Response other) {
    _$v = other as _$ReportNamesListReportNames200Response;
  }

  @override
  void update(
    void Function(ReportNamesListReportNames200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ReportNamesListReportNames200Response build() => _build();

  _$ReportNamesListReportNames200Response _build() {
    _$ReportNamesListReportNames200Response _$result;
    try {
      _$result =
          _$v ??
          _$ReportNamesListReportNames200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'ReportNamesListReportNames200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'ReportNamesListReportNames200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'ReportNamesListReportNames200Response',
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
          r'ReportNamesListReportNames200Response',
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
