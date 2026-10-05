// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_storage_keys.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TokenStorageKeysAccessTokenEnum
_$tokenStorageKeysAccessTokenEnum_labPeriodAccessToken =
    const TokenStorageKeysAccessTokenEnum._('labPeriodAccessToken');

TokenStorageKeysAccessTokenEnum _$tokenStorageKeysAccessTokenEnumValueOf(
  String name,
) {
  switch (name) {
    case 'labPeriodAccessToken':
      return _$tokenStorageKeysAccessTokenEnum_labPeriodAccessToken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TokenStorageKeysAccessTokenEnum>
_$tokenStorageKeysAccessTokenEnumValues =
    BuiltSet<TokenStorageKeysAccessTokenEnum>(
      const <TokenStorageKeysAccessTokenEnum>[
        _$tokenStorageKeysAccessTokenEnum_labPeriodAccessToken,
      ],
    );

const TokenStorageKeysRefreshTokenEnum
_$tokenStorageKeysRefreshTokenEnum_labPeriodRefreshToken =
    const TokenStorageKeysRefreshTokenEnum._('labPeriodRefreshToken');

TokenStorageKeysRefreshTokenEnum _$tokenStorageKeysRefreshTokenEnumValueOf(
  String name,
) {
  switch (name) {
    case 'labPeriodRefreshToken':
      return _$tokenStorageKeysRefreshTokenEnum_labPeriodRefreshToken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TokenStorageKeysRefreshTokenEnum>
_$tokenStorageKeysRefreshTokenEnumValues =
    BuiltSet<TokenStorageKeysRefreshTokenEnum>(
      const <TokenStorageKeysRefreshTokenEnum>[
        _$tokenStorageKeysRefreshTokenEnum_labPeriodRefreshToken,
      ],
    );

const TokenStorageKeysActiveTenantIdEnum
_$tokenStorageKeysActiveTenantIdEnum_labPeriodActiveTenantId =
    const TokenStorageKeysActiveTenantIdEnum._('labPeriodActiveTenantId');

TokenStorageKeysActiveTenantIdEnum _$tokenStorageKeysActiveTenantIdEnumValueOf(
  String name,
) {
  switch (name) {
    case 'labPeriodActiveTenantId':
      return _$tokenStorageKeysActiveTenantIdEnum_labPeriodActiveTenantId;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TokenStorageKeysActiveTenantIdEnum>
_$tokenStorageKeysActiveTenantIdEnumValues =
    BuiltSet<TokenStorageKeysActiveTenantIdEnum>(
      const <TokenStorageKeysActiveTenantIdEnum>[
        _$tokenStorageKeysActiveTenantIdEnum_labPeriodActiveTenantId,
      ],
    );

const TokenStorageKeysPermissionsCacheEnum
_$tokenStorageKeysPermissionsCacheEnum_labPeriodPermissions =
    const TokenStorageKeysPermissionsCacheEnum._('labPeriodPermissions');

TokenStorageKeysPermissionsCacheEnum
_$tokenStorageKeysPermissionsCacheEnumValueOf(String name) {
  switch (name) {
    case 'labPeriodPermissions':
      return _$tokenStorageKeysPermissionsCacheEnum_labPeriodPermissions;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TokenStorageKeysPermissionsCacheEnum>
_$tokenStorageKeysPermissionsCacheEnumValues =
    BuiltSet<TokenStorageKeysPermissionsCacheEnum>(
      const <TokenStorageKeysPermissionsCacheEnum>[
        _$tokenStorageKeysPermissionsCacheEnum_labPeriodPermissions,
      ],
    );

Serializer<TokenStorageKeysAccessTokenEnum>
_$tokenStorageKeysAccessTokenEnumSerializer =
    _$TokenStorageKeysAccessTokenEnumSerializer();
Serializer<TokenStorageKeysRefreshTokenEnum>
_$tokenStorageKeysRefreshTokenEnumSerializer =
    _$TokenStorageKeysRefreshTokenEnumSerializer();
Serializer<TokenStorageKeysActiveTenantIdEnum>
_$tokenStorageKeysActiveTenantIdEnumSerializer =
    _$TokenStorageKeysActiveTenantIdEnumSerializer();
Serializer<TokenStorageKeysPermissionsCacheEnum>
_$tokenStorageKeysPermissionsCacheEnumSerializer =
    _$TokenStorageKeysPermissionsCacheEnumSerializer();

class _$TokenStorageKeysAccessTokenEnumSerializer
    implements PrimitiveSerializer<TokenStorageKeysAccessTokenEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'labPeriodAccessToken': 'lab.accessToken',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'lab.accessToken': 'labPeriodAccessToken',
  };

  @override
  final Iterable<Type> types = const <Type>[TokenStorageKeysAccessTokenEnum];
  @override
  final String wireName = 'TokenStorageKeysAccessTokenEnum';

  @override
  Object serialize(
    Serializers serializers,
    TokenStorageKeysAccessTokenEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TokenStorageKeysAccessTokenEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TokenStorageKeysAccessTokenEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TokenStorageKeysRefreshTokenEnumSerializer
    implements PrimitiveSerializer<TokenStorageKeysRefreshTokenEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'labPeriodRefreshToken': 'lab.refreshToken',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'lab.refreshToken': 'labPeriodRefreshToken',
  };

  @override
  final Iterable<Type> types = const <Type>[TokenStorageKeysRefreshTokenEnum];
  @override
  final String wireName = 'TokenStorageKeysRefreshTokenEnum';

  @override
  Object serialize(
    Serializers serializers,
    TokenStorageKeysRefreshTokenEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TokenStorageKeysRefreshTokenEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TokenStorageKeysRefreshTokenEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TokenStorageKeysActiveTenantIdEnumSerializer
    implements PrimitiveSerializer<TokenStorageKeysActiveTenantIdEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'labPeriodActiveTenantId': 'lab.activeTenantId',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'lab.activeTenantId': 'labPeriodActiveTenantId',
  };

  @override
  final Iterable<Type> types = const <Type>[TokenStorageKeysActiveTenantIdEnum];
  @override
  final String wireName = 'TokenStorageKeysActiveTenantIdEnum';

  @override
  Object serialize(
    Serializers serializers,
    TokenStorageKeysActiveTenantIdEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TokenStorageKeysActiveTenantIdEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TokenStorageKeysActiveTenantIdEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TokenStorageKeysPermissionsCacheEnumSerializer
    implements PrimitiveSerializer<TokenStorageKeysPermissionsCacheEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'labPeriodPermissions': 'lab.permissions',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'lab.permissions': 'labPeriodPermissions',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TokenStorageKeysPermissionsCacheEnum,
  ];
  @override
  final String wireName = 'TokenStorageKeysPermissionsCacheEnum';

  @override
  Object serialize(
    Serializers serializers,
    TokenStorageKeysPermissionsCacheEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TokenStorageKeysPermissionsCacheEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TokenStorageKeysPermissionsCacheEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TokenStorageKeys extends TokenStorageKeys {
  @override
  final TokenStorageKeysAccessTokenEnum accessToken;
  @override
  final TokenStorageKeysRefreshTokenEnum refreshToken;
  @override
  final TokenStorageKeysActiveTenantIdEnum activeTenantId;
  @override
  final TokenStorageKeysPermissionsCacheEnum permissionsCache;

  factory _$TokenStorageKeys([
    void Function(TokenStorageKeysBuilder)? updates,
  ]) => (TokenStorageKeysBuilder()..update(updates))._build();

  _$TokenStorageKeys._({
    required this.accessToken,
    required this.refreshToken,
    required this.activeTenantId,
    required this.permissionsCache,
  }) : super._();
  @override
  TokenStorageKeys rebuild(void Function(TokenStorageKeysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenStorageKeysBuilder toBuilder() =>
      TokenStorageKeysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenStorageKeys &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        activeTenantId == other.activeTenantId &&
        permissionsCache == other.permissionsCache;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, activeTenantId.hashCode);
    _$hash = $jc(_$hash, permissionsCache.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenStorageKeys')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('activeTenantId', activeTenantId)
          ..add('permissionsCache', permissionsCache))
        .toString();
  }
}

class TokenStorageKeysBuilder
    implements Builder<TokenStorageKeys, TokenStorageKeysBuilder> {
  _$TokenStorageKeys? _$v;

  TokenStorageKeysAccessTokenEnum? _accessToken;
  TokenStorageKeysAccessTokenEnum? get accessToken => _$this._accessToken;
  set accessToken(TokenStorageKeysAccessTokenEnum? accessToken) =>
      _$this._accessToken = accessToken;

  TokenStorageKeysRefreshTokenEnum? _refreshToken;
  TokenStorageKeysRefreshTokenEnum? get refreshToken => _$this._refreshToken;
  set refreshToken(TokenStorageKeysRefreshTokenEnum? refreshToken) =>
      _$this._refreshToken = refreshToken;

  TokenStorageKeysActiveTenantIdEnum? _activeTenantId;
  TokenStorageKeysActiveTenantIdEnum? get activeTenantId =>
      _$this._activeTenantId;
  set activeTenantId(TokenStorageKeysActiveTenantIdEnum? activeTenantId) =>
      _$this._activeTenantId = activeTenantId;

  TokenStorageKeysPermissionsCacheEnum? _permissionsCache;
  TokenStorageKeysPermissionsCacheEnum? get permissionsCache =>
      _$this._permissionsCache;
  set permissionsCache(
    TokenStorageKeysPermissionsCacheEnum? permissionsCache,
  ) => _$this._permissionsCache = permissionsCache;

  TokenStorageKeysBuilder() {
    TokenStorageKeys._defaults(this);
  }

  TokenStorageKeysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _activeTenantId = $v.activeTenantId;
      _permissionsCache = $v.permissionsCache;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenStorageKeys other) {
    _$v = other as _$TokenStorageKeys;
  }

  @override
  void update(void Function(TokenStorageKeysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenStorageKeys build() => _build();

  _$TokenStorageKeys _build() {
    final _$result =
        _$v ??
        _$TokenStorageKeys._(
          accessToken: BuiltValueNullFieldError.checkNotNull(
            accessToken,
            r'TokenStorageKeys',
            'accessToken',
          ),
          refreshToken: BuiltValueNullFieldError.checkNotNull(
            refreshToken,
            r'TokenStorageKeys',
            'refreshToken',
          ),
          activeTenantId: BuiltValueNullFieldError.checkNotNull(
            activeTenantId,
            r'TokenStorageKeys',
            'activeTenantId',
          ),
          permissionsCache: BuiltValueNullFieldError.checkNotNull(
            permissionsCache,
            r'TokenStorageKeys',
            'permissionsCache',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
