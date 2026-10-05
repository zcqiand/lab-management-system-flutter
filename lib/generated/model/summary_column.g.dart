// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_column.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryColumn extends SummaryColumn {
  @override
  final String key;
  @override
  final String label;

  factory _$SummaryColumn([void Function(SummaryColumnBuilder)? updates]) =>
      (SummaryColumnBuilder()..update(updates))._build();

  _$SummaryColumn._({required this.key, required this.label}) : super._();
  @override
  SummaryColumn rebuild(void Function(SummaryColumnBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryColumnBuilder toBuilder() => SummaryColumnBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryColumn && key == other.key && label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SummaryColumn')
          ..add('key', key)
          ..add('label', label))
        .toString();
  }
}

class SummaryColumnBuilder
    implements Builder<SummaryColumn, SummaryColumnBuilder> {
  _$SummaryColumn? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  SummaryColumnBuilder() {
    SummaryColumn._defaults(this);
  }

  SummaryColumnBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryColumn other) {
    _$v = other as _$SummaryColumn;
  }

  @override
  void update(void Function(SummaryColumnBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryColumn build() => _build();

  _$SummaryColumn _build() {
    final _$result =
        _$v ??
        _$SummaryColumn._(
          key: BuiltValueNullFieldError.checkNotNull(
            key,
            r'SummaryColumn',
            'key',
          ),
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'SummaryColumn',
            'label',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
