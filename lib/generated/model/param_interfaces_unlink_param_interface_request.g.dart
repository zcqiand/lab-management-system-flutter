// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_interfaces_unlink_param_interface_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParamInterfacesUnlinkParamInterfaceRequest
    extends ParamInterfacesUnlinkParamInterfaceRequest {
  @override
  final String inspectionParameterCode;
  @override
  final String paramInterfaceCode;

  factory _$ParamInterfacesUnlinkParamInterfaceRequest([
    void Function(ParamInterfacesUnlinkParamInterfaceRequestBuilder)? updates,
  ]) => (ParamInterfacesUnlinkParamInterfaceRequestBuilder()..update(updates))
      ._build();

  _$ParamInterfacesUnlinkParamInterfaceRequest._({
    required this.inspectionParameterCode,
    required this.paramInterfaceCode,
  }) : super._();
  @override
  ParamInterfacesUnlinkParamInterfaceRequest rebuild(
    void Function(ParamInterfacesUnlinkParamInterfaceRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ParamInterfacesUnlinkParamInterfaceRequestBuilder toBuilder() =>
      ParamInterfacesUnlinkParamInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamInterfacesUnlinkParamInterfaceRequest &&
        inspectionParameterCode == other.inspectionParameterCode &&
        paramInterfaceCode == other.paramInterfaceCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jc(_$hash, paramInterfaceCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ParamInterfacesUnlinkParamInterfaceRequest',
          )
          ..add('inspectionParameterCode', inspectionParameterCode)
          ..add('paramInterfaceCode', paramInterfaceCode))
        .toString();
  }
}

class ParamInterfacesUnlinkParamInterfaceRequestBuilder
    implements
        Builder<
          ParamInterfacesUnlinkParamInterfaceRequest,
          ParamInterfacesUnlinkParamInterfaceRequestBuilder
        > {
  _$ParamInterfacesUnlinkParamInterfaceRequest? _$v;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

  String? _paramInterfaceCode;
  String? get paramInterfaceCode => _$this._paramInterfaceCode;
  set paramInterfaceCode(String? paramInterfaceCode) =>
      _$this._paramInterfaceCode = paramInterfaceCode;

  ParamInterfacesUnlinkParamInterfaceRequestBuilder() {
    ParamInterfacesUnlinkParamInterfaceRequest._defaults(this);
  }

  ParamInterfacesUnlinkParamInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionParameterCode = $v.inspectionParameterCode;
      _paramInterfaceCode = $v.paramInterfaceCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamInterfacesUnlinkParamInterfaceRequest other) {
    _$v = other as _$ParamInterfacesUnlinkParamInterfaceRequest;
  }

  @override
  void update(
    void Function(ParamInterfacesUnlinkParamInterfaceRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ParamInterfacesUnlinkParamInterfaceRequest build() => _build();

  _$ParamInterfacesUnlinkParamInterfaceRequest _build() {
    final _$result =
        _$v ??
        _$ParamInterfacesUnlinkParamInterfaceRequest._(
          inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
            inspectionParameterCode,
            r'ParamInterfacesUnlinkParamInterfaceRequest',
            'inspectionParameterCode',
          ),
          paramInterfaceCode: BuiltValueNullFieldError.checkNotNull(
            paramInterfaceCode,
            r'ParamInterfacesUnlinkParamInterfaceRequest',
            'paramInterfaceCode',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
