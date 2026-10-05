// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_interfaces_list_param_interface_links200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParamInterfacesListParamInterfaceLinks200Response
    extends ParamInterfacesListParamInterfaceLinks200Response {
  @override
  final BuiltList<ParamInterfaceLink> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$ParamInterfacesListParamInterfaceLinks200Response([
    void Function(ParamInterfacesListParamInterfaceLinks200ResponseBuilder)?
    updates,
  ]) =>
      (ParamInterfacesListParamInterfaceLinks200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ParamInterfacesListParamInterfaceLinks200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  ParamInterfacesListParamInterfaceLinks200Response rebuild(
    void Function(ParamInterfacesListParamInterfaceLinks200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ParamInterfacesListParamInterfaceLinks200ResponseBuilder toBuilder() =>
      ParamInterfacesListParamInterfaceLinks200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamInterfacesListParamInterfaceLinks200Response &&
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
            r'ParamInterfacesListParamInterfaceLinks200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class ParamInterfacesListParamInterfaceLinks200ResponseBuilder
    implements
        Builder<
          ParamInterfacesListParamInterfaceLinks200Response,
          ParamInterfacesListParamInterfaceLinks200ResponseBuilder
        > {
  _$ParamInterfacesListParamInterfaceLinks200Response? _$v;

  ListBuilder<ParamInterfaceLink>? _items;
  ListBuilder<ParamInterfaceLink> get items =>
      _$this._items ??= ListBuilder<ParamInterfaceLink>();
  set items(ListBuilder<ParamInterfaceLink>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ParamInterfacesListParamInterfaceLinks200ResponseBuilder() {
    ParamInterfacesListParamInterfaceLinks200Response._defaults(this);
  }

  ParamInterfacesListParamInterfaceLinks200ResponseBuilder get _$this {
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
  void replace(ParamInterfacesListParamInterfaceLinks200Response other) {
    _$v = other as _$ParamInterfacesListParamInterfaceLinks200Response;
  }

  @override
  void update(
    void Function(ParamInterfacesListParamInterfaceLinks200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ParamInterfacesListParamInterfaceLinks200Response build() => _build();

  _$ParamInterfacesListParamInterfaceLinks200Response _build() {
    _$ParamInterfacesListParamInterfaceLinks200Response _$result;
    try {
      _$result =
          _$v ??
          _$ParamInterfacesListParamInterfaceLinks200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'ParamInterfacesListParamInterfaceLinks200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'ParamInterfacesListParamInterfaceLinks200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'ParamInterfacesListParamInterfaceLinks200Response',
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
          r'ParamInterfacesListParamInterfaceLinks200Response',
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
