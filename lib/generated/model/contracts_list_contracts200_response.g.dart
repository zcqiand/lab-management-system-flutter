// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contracts_list_contracts200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContractsListContracts200Response
    extends ContractsListContracts200Response {
  @override
  final BuiltList<Contract> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$ContractsListContracts200Response([
    void Function(ContractsListContracts200ResponseBuilder)? updates,
  ]) => (ContractsListContracts200ResponseBuilder()..update(updates))._build();

  _$ContractsListContracts200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  ContractsListContracts200Response rebuild(
    void Function(ContractsListContracts200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ContractsListContracts200ResponseBuilder toBuilder() =>
      ContractsListContracts200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContractsListContracts200Response &&
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
    return (newBuiltValueToStringHelper(r'ContractsListContracts200Response')
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class ContractsListContracts200ResponseBuilder
    implements
        Builder<
          ContractsListContracts200Response,
          ContractsListContracts200ResponseBuilder
        > {
  _$ContractsListContracts200Response? _$v;

  ListBuilder<Contract>? _items;
  ListBuilder<Contract> get items => _$this._items ??= ListBuilder<Contract>();
  set items(ListBuilder<Contract>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ContractsListContracts200ResponseBuilder() {
    ContractsListContracts200Response._defaults(this);
  }

  ContractsListContracts200ResponseBuilder get _$this {
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
  void replace(ContractsListContracts200Response other) {
    _$v = other as _$ContractsListContracts200Response;
  }

  @override
  void update(
    void Function(ContractsListContracts200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ContractsListContracts200Response build() => _build();

  _$ContractsListContracts200Response _build() {
    _$ContractsListContracts200Response _$result;
    try {
      _$result =
          _$v ??
          _$ContractsListContracts200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'ContractsListContracts200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'ContractsListContracts200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'ContractsListContracts200Response',
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
          r'ContractsListContracts200Response',
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
