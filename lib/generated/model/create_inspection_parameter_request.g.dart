// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_inspection_parameter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInspectionParameterRequest
    extends CreateInspectionParameterRequest {
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
  final BuiltList<String>? aliases;
  @override
  final String? unit;
  @override
  final InspectionParameterSourceType? sourceType;
  @override
  final int? sortOrder;

  factory _$CreateInspectionParameterRequest([
    void Function(CreateInspectionParameterRequestBuilder)? updates,
  ]) => (CreateInspectionParameterRequestBuilder()..update(updates))._build();

  _$CreateInspectionParameterRequest._({
    required this.code,
    required this.name,
    required this.rawName,
    required this.canonicalName,
    this.methodText,
    this.aliases,
    this.unit,
    this.sourceType,
    this.sortOrder,
  }) : super._();
  @override
  CreateInspectionParameterRequest rebuild(
    void Function(CreateInspectionParameterRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateInspectionParameterRequestBuilder toBuilder() =>
      CreateInspectionParameterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInspectionParameterRequest &&
        code == other.code &&
        name == other.name &&
        rawName == other.rawName &&
        canonicalName == other.canonicalName &&
        methodText == other.methodText &&
        aliases == other.aliases &&
        unit == other.unit &&
        sourceType == other.sourceType &&
        sortOrder == other.sortOrder;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateInspectionParameterRequest')
          ..add('code', code)
          ..add('name', name)
          ..add('rawName', rawName)
          ..add('canonicalName', canonicalName)
          ..add('methodText', methodText)
          ..add('aliases', aliases)
          ..add('unit', unit)
          ..add('sourceType', sourceType)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class CreateInspectionParameterRequestBuilder
    implements
        Builder<
          CreateInspectionParameterRequest,
          CreateInspectionParameterRequestBuilder
        > {
  _$CreateInspectionParameterRequest? _$v;

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

  CreateInspectionParameterRequestBuilder() {
    CreateInspectionParameterRequest._defaults(this);
  }

  CreateInspectionParameterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _rawName = $v.rawName;
      _canonicalName = $v.canonicalName;
      _methodText = $v.methodText;
      _aliases = $v.aliases?.toBuilder();
      _unit = $v.unit;
      _sourceType = $v.sourceType;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInspectionParameterRequest other) {
    _$v = other as _$CreateInspectionParameterRequest;
  }

  @override
  void update(void Function(CreateInspectionParameterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInspectionParameterRequest build() => _build();

  _$CreateInspectionParameterRequest _build() {
    _$CreateInspectionParameterRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateInspectionParameterRequest._(
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'CreateInspectionParameterRequest',
              'code',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CreateInspectionParameterRequest',
              'name',
            ),
            rawName: BuiltValueNullFieldError.checkNotNull(
              rawName,
              r'CreateInspectionParameterRequest',
              'rawName',
            ),
            canonicalName: BuiltValueNullFieldError.checkNotNull(
              canonicalName,
              r'CreateInspectionParameterRequest',
              'canonicalName',
            ),
            methodText: methodText,
            aliases: _aliases?.build(),
            unit: unit,
            sourceType: sourceType,
            sortOrder: sortOrder,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aliases';
        _aliases?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateInspectionParameterRequest',
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
