// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_interface.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParamInterface extends ParamInterface {
  @override
  final String code;
  @override
  final String? name;
  @override
  final String componentPath;
  @override
  final String? description;
  @override
  final bool? isOfficial;
  @override
  final int sortOrder;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$ParamInterface([void Function(ParamInterfaceBuilder)? updates]) =>
      (ParamInterfaceBuilder()..update(updates))._build();

  _$ParamInterface._({
    required this.code,
    this.name,
    required this.componentPath,
    this.description,
    this.isOfficial,
    required this.sortOrder,
    this.config,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  ParamInterface rebuild(void Function(ParamInterfaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamInterfaceBuilder toBuilder() => ParamInterfaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamInterface &&
        code == other.code &&
        name == other.name &&
        componentPath == other.componentPath &&
        description == other.description &&
        isOfficial == other.isOfficial &&
        sortOrder == other.sortOrder &&
        config == other.config &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, componentPath.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isOfficial.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamInterface')
          ..add('code', code)
          ..add('name', name)
          ..add('componentPath', componentPath)
          ..add('description', description)
          ..add('isOfficial', isOfficial)
          ..add('sortOrder', sortOrder)
          ..add('config', config)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ParamInterfaceBuilder
    implements Builder<ParamInterface, ParamInterfaceBuilder> {
  _$ParamInterface? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _componentPath;
  String? get componentPath => _$this._componentPath;
  set componentPath(String? componentPath) =>
      _$this._componentPath = componentPath;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isOfficial;
  bool? get isOfficial => _$this._isOfficial;
  set isOfficial(bool? isOfficial) => _$this._isOfficial = isOfficial;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  ParamInterfaceBuilder() {
    ParamInterface._defaults(this);
  }

  ParamInterfaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _componentPath = $v.componentPath;
      _description = $v.description;
      _isOfficial = $v.isOfficial;
      _sortOrder = $v.sortOrder;
      _config = $v.config?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamInterface other) {
    _$v = other as _$ParamInterface;
  }

  @override
  void update(void Function(ParamInterfaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamInterface build() => _build();

  _$ParamInterface _build() {
    _$ParamInterface _$result;
    try {
      _$result =
          _$v ??
          _$ParamInterface._(
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'ParamInterface',
              'code',
            ),
            name: name,
            componentPath: BuiltValueNullFieldError.checkNotNull(
              componentPath,
              r'ParamInterface',
              'componentPath',
            ),
            description: description,
            isOfficial: isOfficial,
            sortOrder: BuiltValueNullFieldError.checkNotNull(
              sortOrder,
              r'ParamInterface',
              'sortOrder',
            ),
            config: _config?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ParamInterface',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'ParamInterface',
              'updatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ParamInterface',
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
