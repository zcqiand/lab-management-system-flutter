// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inspection_parameter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateInspectionParameterRequest
    extends UpdateInspectionParameterRequest {
  @override
  final String? name;
  @override
  final String? rawName;
  @override
  final String? canonicalName;
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

  factory _$UpdateInspectionParameterRequest([
    void Function(UpdateInspectionParameterRequestBuilder)? updates,
  ]) => (UpdateInspectionParameterRequestBuilder()..update(updates))._build();

  _$UpdateInspectionParameterRequest._({
    this.name,
    this.rawName,
    this.canonicalName,
    this.methodText,
    this.aliases,
    this.unit,
    this.sourceType,
    this.sortOrder,
  }) : super._();
  @override
  UpdateInspectionParameterRequest rebuild(
    void Function(UpdateInspectionParameterRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateInspectionParameterRequestBuilder toBuilder() =>
      UpdateInspectionParameterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateInspectionParameterRequest &&
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
    return (newBuiltValueToStringHelper(r'UpdateInspectionParameterRequest')
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

class UpdateInspectionParameterRequestBuilder
    implements
        Builder<
          UpdateInspectionParameterRequest,
          UpdateInspectionParameterRequestBuilder
        > {
  _$UpdateInspectionParameterRequest? _$v;

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

  UpdateInspectionParameterRequestBuilder() {
    UpdateInspectionParameterRequest._defaults(this);
  }

  UpdateInspectionParameterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(UpdateInspectionParameterRequest other) {
    _$v = other as _$UpdateInspectionParameterRequest;
  }

  @override
  void update(void Function(UpdateInspectionParameterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateInspectionParameterRequest build() => _build();

  _$UpdateInspectionParameterRequest _build() {
    _$UpdateInspectionParameterRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateInspectionParameterRequest._(
            name: name,
            rawName: rawName,
            canonicalName: canonicalName,
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
          r'UpdateInspectionParameterRequest',
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
