// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_interface_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParamInterfaceLink extends ParamInterfaceLink {
  @override
  final String inspectionParameterCode;
  @override
  final String paramInterfaceCode;
  @override
  final String? reportNameCode;
  @override
  final BuiltMap<String, JsonObject?>? config;

  factory _$ParamInterfaceLink([
    void Function(ParamInterfaceLinkBuilder)? updates,
  ]) => (ParamInterfaceLinkBuilder()..update(updates))._build();

  _$ParamInterfaceLink._({
    required this.inspectionParameterCode,
    required this.paramInterfaceCode,
    this.reportNameCode,
    this.config,
  }) : super._();
  @override
  ParamInterfaceLink rebuild(
    void Function(ParamInterfaceLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ParamInterfaceLinkBuilder toBuilder() =>
      ParamInterfaceLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamInterfaceLink &&
        inspectionParameterCode == other.inspectionParameterCode &&
        paramInterfaceCode == other.paramInterfaceCode &&
        reportNameCode == other.reportNameCode &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jc(_$hash, paramInterfaceCode.hashCode);
    _$hash = $jc(_$hash, reportNameCode.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamInterfaceLink')
          ..add('inspectionParameterCode', inspectionParameterCode)
          ..add('paramInterfaceCode', paramInterfaceCode)
          ..add('reportNameCode', reportNameCode)
          ..add('config', config))
        .toString();
  }
}

class ParamInterfaceLinkBuilder
    implements Builder<ParamInterfaceLink, ParamInterfaceLinkBuilder> {
  _$ParamInterfaceLink? _$v;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

  String? _paramInterfaceCode;
  String? get paramInterfaceCode => _$this._paramInterfaceCode;
  set paramInterfaceCode(String? paramInterfaceCode) =>
      _$this._paramInterfaceCode = paramInterfaceCode;

  String? _reportNameCode;
  String? get reportNameCode => _$this._reportNameCode;
  set reportNameCode(String? reportNameCode) =>
      _$this._reportNameCode = reportNameCode;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  ParamInterfaceLinkBuilder() {
    ParamInterfaceLink._defaults(this);
  }

  ParamInterfaceLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionParameterCode = $v.inspectionParameterCode;
      _paramInterfaceCode = $v.paramInterfaceCode;
      _reportNameCode = $v.reportNameCode;
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamInterfaceLink other) {
    _$v = other as _$ParamInterfaceLink;
  }

  @override
  void update(void Function(ParamInterfaceLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamInterfaceLink build() => _build();

  _$ParamInterfaceLink _build() {
    _$ParamInterfaceLink _$result;
    try {
      _$result =
          _$v ??
          _$ParamInterfaceLink._(
            inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
              inspectionParameterCode,
              r'ParamInterfaceLink',
              'inspectionParameterCode',
            ),
            paramInterfaceCode: BuiltValueNullFieldError.checkNotNull(
              paramInterfaceCode,
              r'ParamInterfaceLink',
              'paramInterfaceCode',
            ),
            reportNameCode: reportNameCode,
            config: _config?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ParamInterfaceLink',
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
