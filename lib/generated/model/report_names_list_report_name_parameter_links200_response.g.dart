// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_names_list_report_name_parameter_links200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportNamesListReportNameParameterLinks200Response
    extends ReportNamesListReportNameParameterLinks200Response {
  @override
  final BuiltList<ReportNameParameterLink> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$ReportNamesListReportNameParameterLinks200Response([
    void Function(ReportNamesListReportNameParameterLinks200ResponseBuilder)?
    updates,
  ]) =>
      (ReportNamesListReportNameParameterLinks200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ReportNamesListReportNameParameterLinks200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  ReportNamesListReportNameParameterLinks200Response rebuild(
    void Function(ReportNamesListReportNameParameterLinks200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportNamesListReportNameParameterLinks200ResponseBuilder toBuilder() =>
      ReportNamesListReportNameParameterLinks200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportNamesListReportNameParameterLinks200Response &&
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
            r'ReportNamesListReportNameParameterLinks200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class ReportNamesListReportNameParameterLinks200ResponseBuilder
    implements
        Builder<
          ReportNamesListReportNameParameterLinks200Response,
          ReportNamesListReportNameParameterLinks200ResponseBuilder
        > {
  _$ReportNamesListReportNameParameterLinks200Response? _$v;

  ListBuilder<ReportNameParameterLink>? _items;
  ListBuilder<ReportNameParameterLink> get items =>
      _$this._items ??= ListBuilder<ReportNameParameterLink>();
  set items(ListBuilder<ReportNameParameterLink>? items) =>
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

  ReportNamesListReportNameParameterLinks200ResponseBuilder() {
    ReportNamesListReportNameParameterLinks200Response._defaults(this);
  }

  ReportNamesListReportNameParameterLinks200ResponseBuilder get _$this {
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
  void replace(ReportNamesListReportNameParameterLinks200Response other) {
    _$v = other as _$ReportNamesListReportNameParameterLinks200Response;
  }

  @override
  void update(
    void Function(ReportNamesListReportNameParameterLinks200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ReportNamesListReportNameParameterLinks200Response build() => _build();

  _$ReportNamesListReportNameParameterLinks200Response _build() {
    _$ReportNamesListReportNameParameterLinks200Response _$result;
    try {
      _$result =
          _$v ??
          _$ReportNamesListReportNameParameterLinks200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'ReportNamesListReportNameParameterLinks200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'ReportNamesListReportNameParameterLinks200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'ReportNamesListReportNameParameterLinks200Response',
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
          r'ReportNamesListReportNameParameterLinks200Response',
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
