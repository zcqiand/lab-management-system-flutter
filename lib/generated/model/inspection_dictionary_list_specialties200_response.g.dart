// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_dictionary_list_specialties200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionDictionaryListSpecialties200Response
    extends InspectionDictionaryListSpecialties200Response {
  @override
  final BuiltList<InspectionSpecialty> items;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;

  factory _$InspectionDictionaryListSpecialties200Response([
    void Function(InspectionDictionaryListSpecialties200ResponseBuilder)?
    updates,
  ]) =>
      (InspectionDictionaryListSpecialties200ResponseBuilder()..update(updates))
          ._build();

  _$InspectionDictionaryListSpecialties200Response._({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
  }) : super._();
  @override
  InspectionDictionaryListSpecialties200Response rebuild(
    void Function(InspectionDictionaryListSpecialties200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionDictionaryListSpecialties200ResponseBuilder toBuilder() =>
      InspectionDictionaryListSpecialties200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionDictionaryListSpecialties200Response &&
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
            r'InspectionDictionaryListSpecialties200Response',
          )
          ..add('items', items)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('total', total))
        .toString();
  }
}

class InspectionDictionaryListSpecialties200ResponseBuilder
    implements
        Builder<
          InspectionDictionaryListSpecialties200Response,
          InspectionDictionaryListSpecialties200ResponseBuilder
        > {
  _$InspectionDictionaryListSpecialties200Response? _$v;

  ListBuilder<InspectionSpecialty>? _items;
  ListBuilder<InspectionSpecialty> get items =>
      _$this._items ??= ListBuilder<InspectionSpecialty>();
  set items(ListBuilder<InspectionSpecialty>? items) => _$this._items = items;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  InspectionDictionaryListSpecialties200ResponseBuilder() {
    InspectionDictionaryListSpecialties200Response._defaults(this);
  }

  InspectionDictionaryListSpecialties200ResponseBuilder get _$this {
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
  void replace(InspectionDictionaryListSpecialties200Response other) {
    _$v = other as _$InspectionDictionaryListSpecialties200Response;
  }

  @override
  void update(
    void Function(InspectionDictionaryListSpecialties200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InspectionDictionaryListSpecialties200Response build() => _build();

  _$InspectionDictionaryListSpecialties200Response _build() {
    _$InspectionDictionaryListSpecialties200Response _$result;
    try {
      _$result =
          _$v ??
          _$InspectionDictionaryListSpecialties200Response._(
            items: items.build(),
            page: BuiltValueNullFieldError.checkNotNull(
              page,
              r'InspectionDictionaryListSpecialties200Response',
              'page',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'InspectionDictionaryListSpecialties200Response',
              'pageSize',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'InspectionDictionaryListSpecialties200Response',
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
          r'InspectionDictionaryListSpecialties200Response',
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
