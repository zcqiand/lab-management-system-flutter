// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ext_field_def.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExtFieldDef extends ExtFieldDef {
  @override
  final String key;
  @override
  final String label;
  @override
  final ExtFieldDefType type;
  @override
  final bool? required_;
  @override
  final BuiltList<String>? options;
  @override
  final String? tag;
  @override
  final ExtFieldDefSource? source_;

  factory _$ExtFieldDef([void Function(ExtFieldDefBuilder)? updates]) =>
      (ExtFieldDefBuilder()..update(updates))._build();

  _$ExtFieldDef._({
    required this.key,
    required this.label,
    required this.type,
    this.required_,
    this.options,
    this.tag,
    this.source_,
  }) : super._();
  @override
  ExtFieldDef rebuild(void Function(ExtFieldDefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtFieldDefBuilder toBuilder() => ExtFieldDefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtFieldDef &&
        key == other.key &&
        label == other.label &&
        type == other.type &&
        required_ == other.required_ &&
        options == other.options &&
        tag == other.tag &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExtFieldDef')
          ..add('key', key)
          ..add('label', label)
          ..add('type', type)
          ..add('required_', required_)
          ..add('options', options)
          ..add('tag', tag)
          ..add('source_', source_))
        .toString();
  }
}

class ExtFieldDefBuilder implements Builder<ExtFieldDef, ExtFieldDefBuilder> {
  _$ExtFieldDef? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ExtFieldDefType? _type;
  ExtFieldDefType? get type => _$this._type;
  set type(ExtFieldDefType? type) => _$this._type = type;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  ListBuilder<String>? _options;
  ListBuilder<String> get options => _$this._options ??= ListBuilder<String>();
  set options(ListBuilder<String>? options) => _$this._options = options;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  ExtFieldDefSource? _source_;
  ExtFieldDefSource? get source_ => _$this._source_;
  set source_(ExtFieldDefSource? source_) => _$this._source_ = source_;

  ExtFieldDefBuilder() {
    ExtFieldDef._defaults(this);
  }

  ExtFieldDefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _label = $v.label;
      _type = $v.type;
      _required_ = $v.required_;
      _options = $v.options?.toBuilder();
      _tag = $v.tag;
      _source_ = $v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtFieldDef other) {
    _$v = other as _$ExtFieldDef;
  }

  @override
  void update(void Function(ExtFieldDefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExtFieldDef build() => _build();

  _$ExtFieldDef _build() {
    _$ExtFieldDef _$result;
    try {
      _$result =
          _$v ??
          _$ExtFieldDef._(
            key: BuiltValueNullFieldError.checkNotNull(
              key,
              r'ExtFieldDef',
              'key',
            ),
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'ExtFieldDef',
              'label',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ExtFieldDef',
              'type',
            ),
            required_: required_,
            options: _options?.build(),
            tag: tag,
            source_: source_,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExtFieldDef',
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
