// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_parameter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionParameter extends InspectionParameter {
  @override
  final String code;
  @override
  final String name;
  @override
  final String rawName;
  @override
  final String canonicalName;
  @override
  final String? methodText;
  @override
  final BuiltList<String> aliases;
  @override
  final String? unit;
  @override
  final InspectionParameterSourceType sourceType;
  @override
  final int sortOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$InspectionParameter([
    void Function(InspectionParameterBuilder)? updates,
  ]) => (InspectionParameterBuilder()..update(updates))._build();

  _$InspectionParameter._({
    required this.code,
    required this.name,
    required this.rawName,
    required this.canonicalName,
    this.methodText,
    required this.aliases,
    this.unit,
    required this.sourceType,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  InspectionParameter rebuild(
    void Function(InspectionParameterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionParameterBuilder toBuilder() =>
      InspectionParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionParameter &&
        code == other.code &&
        name == other.name &&
        rawName == other.rawName &&
        canonicalName == other.canonicalName &&
        methodText == other.methodText &&
        aliases == other.aliases &&
        unit == other.unit &&
        sourceType == other.sourceType &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, rawName.hashCode);
    _$hash = $jc(_$hash, canonicalName.hashCode);
    _$hash = $jc(_$hash, methodText.hashCode);
    _$hash = $jc(_$hash, aliases.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectionParameter')
          ..add('code', code)
          ..add('name', name)
          ..add('rawName', rawName)
          ..add('canonicalName', canonicalName)
          ..add('methodText', methodText)
          ..add('aliases', aliases)
          ..add('unit', unit)
          ..add('sourceType', sourceType)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class InspectionParameterBuilder
    implements Builder<InspectionParameter, InspectionParameterBuilder> {
  _$InspectionParameter? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _rawName;
  String? get rawName => _$this._rawName;
  set rawName(String? rawName) => _$this._rawName = rawName;

  String? _canonicalName;
  String? get canonicalName => _$this._canonicalName;
  set canonicalName(String? canonicalName) =>
      _$this._canonicalName = canonicalName;

  String? _methodText;
  String? get methodText => _$this._methodText;
  set methodText(String? methodText) => _$this._methodText = methodText;

  ListBuilder<String>? _aliases;
  ListBuilder<String> get aliases => _$this._aliases ??= ListBuilder<String>();
  set aliases(ListBuilder<String>? aliases) => _$this._aliases = aliases;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  InspectionParameterSourceType? _sourceType;
  InspectionParameterSourceType? get sourceType => _$this._sourceType;
  set sourceType(InspectionParameterSourceType? sourceType) =>
      _$this._sourceType = sourceType;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  InspectionParameterBuilder() {
    InspectionParameter._defaults(this);
  }

  InspectionParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _rawName = $v.rawName;
      _canonicalName = $v.canonicalName;
      _methodText = $v.methodText;
      _aliases = $v.aliases.toBuilder();
      _unit = $v.unit;
      _sourceType = $v.sourceType;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionParameter other) {
    _$v = other as _$InspectionParameter;
  }

  @override
  void update(void Function(InspectionParameterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectionParameter build() => _build();

  _$InspectionParameter _build() {
    _$InspectionParameter _$result;
    try {
      _$result =
          _$v ??
          _$InspectionParameter._(
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'InspectionParameter',
              'code',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'InspectionParameter',
              'name',
            ),
            rawName: BuiltValueNullFieldError.checkNotNull(
              rawName,
              r'InspectionParameter',
              'rawName',
            ),
            canonicalName: BuiltValueNullFieldError.checkNotNull(
              canonicalName,
              r'InspectionParameter',
              'canonicalName',
            ),
            methodText: methodText,
            aliases: aliases.build(),
            unit: unit,
            sourceType: BuiltValueNullFieldError.checkNotNull(
              sourceType,
              r'InspectionParameter',
              'sourceType',
            ),
            sortOrder: BuiltValueNullFieldError.checkNotNull(
              sortOrder,
              r'InspectionParameter',
              'sortOrder',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'InspectionParameter',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'InspectionParameter',
              'updatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aliases';
        aliases.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InspectionParameter',
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
