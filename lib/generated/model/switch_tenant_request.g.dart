// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_tenant_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SwitchTenantRequest extends SwitchTenantRequest {
  @override
  final String tenantId;

  factory _$SwitchTenantRequest([
    void Function(SwitchTenantRequestBuilder)? updates,
  ]) => (SwitchTenantRequestBuilder()..update(updates))._build();

  _$SwitchTenantRequest._({required this.tenantId}) : super._();
  @override
  SwitchTenantRequest rebuild(
    void Function(SwitchTenantRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SwitchTenantRequestBuilder toBuilder() =>
      SwitchTenantRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwitchTenantRequest && tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'SwitchTenantRequest',
    )..add('tenantId', tenantId)).toString();
  }
}

class SwitchTenantRequestBuilder
    implements Builder<SwitchTenantRequest, SwitchTenantRequestBuilder> {
  _$SwitchTenantRequest? _$v;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  SwitchTenantRequestBuilder() {
    SwitchTenantRequest._defaults(this);
  }

  SwitchTenantRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwitchTenantRequest other) {
    _$v = other as _$SwitchTenantRequest;
  }

  @override
  void update(void Function(SwitchTenantRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SwitchTenantRequest build() => _build();

  _$SwitchTenantRequest _build() {
    final _$result =
        _$v ??
        _$SwitchTenantRequest._(
          tenantId: BuiltValueNullFieldError.checkNotNull(
            tenantId,
            r'SwitchTenantRequest',
            'tenantId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
