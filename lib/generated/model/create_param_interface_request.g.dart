// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_param_interface_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateParamInterfaceRequest extends CreateParamInterfaceRequest {
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
  final int? sortOrder;
  @override
  final BuiltMap<String, JsonObject?>? config;

  factory _$CreateParamInterfaceRequest([
    void Function(CreateParamInterfaceRequestBuilder)? updates,
  ]) => (CreateParamInterfaceRequestBuilder()..update(updates))._build();

  _$CreateParamInterfaceRequest._({
    required this.code,
    this.name,
    required this.componentPath,
    this.description,
    this.isOfficial,
    this.sortOrder,
    this.config,
  }) : super._();
  @override
  CreateParamInterfaceRequest rebuild(
    void Function(CreateParamInterfaceRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateParamInterfaceRequestBuilder toBuilder() =>
      CreateParamInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateParamInterfaceRequest &&
        code == other.code &&
        name == other.name &&
        componentPath == other.componentPath &&
        description == other.description &&
        isOfficial == other.isOfficial &&
        sortOrder == other.sortOrder &&
        config == other.config;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateParamInterfaceRequest')
          ..add('code', code)
          ..add('name', name)
          ..add('componentPath', componentPath)
          ..add('description', description)
          ..add('isOfficial', isOfficial)
          ..add('sortOrder', sortOrder)
          ..add('config', config))
        .toString();
  }
}

class CreateParamInterfaceRequestBuilder
    implements
        Builder<
          CreateParamInterfaceRequest,
          CreateParamInterfaceRequestBuilder
        > {
  _$CreateParamInterfaceRequest? _$v;

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

  CreateParamInterfaceRequestBuilder() {
    CreateParamInterfaceRequest._defaults(this);
  }

  CreateParamInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _componentPath = $v.componentPath;
      _description = $v.description;
      _isOfficial = $v.isOfficial;
      _sortOrder = $v.sortOrder;
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateParamInterfaceRequest other) {
    _$v = other as _$CreateParamInterfaceRequest;
  }

  @override
  void update(void Function(CreateParamInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateParamInterfaceRequest build() => _build();

  _$CreateParamInterfaceRequest _build() {
    _$CreateParamInterfaceRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateParamInterfaceRequest._(
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'CreateParamInterfaceRequest',
              'code',
            ),
            name: name,
            componentPath: BuiltValueNullFieldError.checkNotNull(
              componentPath,
              r'CreateParamInterfaceRequest',
              'componentPath',
            ),
            description: description,
            isOfficial: isOfficial,
            sortOrder: sortOrder,
            config: _config?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateParamInterfaceRequest',
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
