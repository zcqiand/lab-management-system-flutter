// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'samples_list_samples200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SamplesListSamples200Response extends SamplesListSamples200Response {
  @override
  final BuiltList<Sample> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$SamplesListSamples200Response([
    void Function(SamplesListSamples200ResponseBuilder)? updates,
  ]) => (SamplesListSamples200ResponseBuilder()..update(updates))._build();

  _$SamplesListSamples200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  SamplesListSamples200Response rebuild(
    void Function(SamplesListSamples200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SamplesListSamples200ResponseBuilder toBuilder() =>
      SamplesListSamples200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SamplesListSamples200Response &&
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
    return (newBuiltValueToStringHelper(r'SamplesListSamples200Response')
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class SamplesListSamples200ResponseBuilder
    implements
        Builder<
          SamplesListSamples200Response,
          SamplesListSamples200ResponseBuilder
        > {
  _$SamplesListSamples200Response? _$v;

  ListBuilder<Sample>? _items;
  ListBuilder<Sample> get items => _$this._items ??= ListBuilder<Sample>();
  set items(ListBuilder<Sample>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  SamplesListSamples200ResponseBuilder() {
    SamplesListSamples200Response._defaults(this);
  }

  SamplesListSamples200ResponseBuilder get _$this {
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
  void replace(SamplesListSamples200Response other) {
    _$v = other as _$SamplesListSamples200Response;
  }

  @override
  void update(void Function(SamplesListSamples200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SamplesListSamples200Response build() => _build();

  _$SamplesListSamples200Response _build() {
    _$SamplesListSamples200Response _$result;
    try {
      _$result =
          _$v ??
          _$SamplesListSamples200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'SamplesListSamples200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'SamplesListSamples200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'SamplesListSamples200Response',
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
          r'SamplesListSamples200Response',
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
