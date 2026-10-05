// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryData extends SummaryData {
  @override
  final String summaryName;
  @override
  final BuiltList<SummaryColumn> columns;
  @override
  final BuiltList<BuiltMap<String, String>> rows;

  factory _$SummaryData([void Function(SummaryDataBuilder)? updates]) =>
      (SummaryDataBuilder()..update(updates))._build();

  _$SummaryData._({
    required this.summaryName,
    required this.columns,
    required this.rows,
  }) : super._();
  @override
  SummaryData rebuild(void Function(SummaryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryDataBuilder toBuilder() => SummaryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryData &&
        summaryName == other.summaryName &&
        columns == other.columns &&
        rows == other.rows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summaryName.hashCode);
    _$hash = $jc(_$hash, columns.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SummaryData')
          ..add('summaryName', summaryName)
          ..add('columns', columns)
          ..add('rows', rows))
        .toString();
  }
}

class SummaryDataBuilder implements Builder<SummaryData, SummaryDataBuilder> {
  _$SummaryData? _$v;

  String? _summaryName;
  String? get summaryName => _$this._summaryName;
  set summaryName(String? summaryName) => _$this._summaryName = summaryName;

  ListBuilder<SummaryColumn>? _columns;
  ListBuilder<SummaryColumn> get columns =>
      _$this._columns ??= ListBuilder<SummaryColumn>();
  set columns(ListBuilder<SummaryColumn>? columns) => _$this._columns = columns;

  ListBuilder<BuiltMap<String, String>>? _rows;
  ListBuilder<BuiltMap<String, String>> get rows =>
      _$this._rows ??= ListBuilder<BuiltMap<String, String>>();
  set rows(ListBuilder<BuiltMap<String, String>>? rows) => _$this._rows = rows;

  SummaryDataBuilder() {
    SummaryData._defaults(this);
  }

  SummaryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaryName = $v.summaryName;
      _columns = $v.columns.toBuilder();
      _rows = $v.rows.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryData other) {
    _$v = other as _$SummaryData;
  }

  @override
  void update(void Function(SummaryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryData build() => _build();

  _$SummaryData _build() {
    _$SummaryData _$result;
    try {
      _$result =
          _$v ??
          _$SummaryData._(
            summaryName: BuiltValueNullFieldError.checkNotNull(
              summaryName,
              r'SummaryData',
              'summaryName',
            ),
            columns: columns.build(),
            rows: rows.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'columns';
        columns.build();
        _$failedField = 'rows';
        rows.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SummaryData',
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
