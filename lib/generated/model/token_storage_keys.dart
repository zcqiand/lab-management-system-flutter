//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_storage_keys.g.dart';

/// 前端持久化 key 命名约定;后端契约不感知,但前端实现必须遵守
///
/// Properties:
/// * [accessToken] - Bearer token
/// * [refreshToken] - refresh token(与 accessToken 分存,便于隔离 XSS 影响面)
/// * [activeTenantId] - 当前选中租户 ID(authenticated 态缓存)
/// * [permissionsCache] - permissions 缓存(避免每次路由跳转都打 /auth/permissions)
@BuiltValue()
abstract class TokenStorageKeys
    implements Built<TokenStorageKeys, TokenStorageKeysBuilder> {
  /// Bearer token
  @BuiltValueField(wireName: r'accessToken')
  TokenStorageKeysAccessTokenEnum get accessToken;
  // enum accessTokenEnum {  lab.accessToken,  };

  /// refresh token(与 accessToken 分存,便于隔离 XSS 影响面)
  @BuiltValueField(wireName: r'refreshToken')
  TokenStorageKeysRefreshTokenEnum get refreshToken;
  // enum refreshTokenEnum {  lab.refreshToken,  };

  /// 当前选中租户 ID(authenticated 态缓存)
  @BuiltValueField(wireName: r'activeTenantId')
  TokenStorageKeysActiveTenantIdEnum get activeTenantId;
  // enum activeTenantIdEnum {  lab.activeTenantId,  };

  /// permissions 缓存(避免每次路由跳转都打 /auth/permissions)
  @BuiltValueField(wireName: r'permissionsCache')
  TokenStorageKeysPermissionsCacheEnum get permissionsCache;
  // enum permissionsCacheEnum {  lab.permissions,  };

  TokenStorageKeys._();

  factory TokenStorageKeys([void updates(TokenStorageKeysBuilder b)]) =
      _$TokenStorageKeys;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenStorageKeysBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenStorageKeys> get serializer =>
      _$TokenStorageKeysSerializer();
}

class _$TokenStorageKeysSerializer
    implements PrimitiveSerializer<TokenStorageKeys> {
  @override
  final Iterable<Type> types = const [TokenStorageKeys, _$TokenStorageKeys];

  @override
  final String wireName = r'TokenStorageKeys';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenStorageKeys object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(TokenStorageKeysAccessTokenEnum),
    );
    yield r'refreshToken';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(TokenStorageKeysRefreshTokenEnum),
    );
    yield r'activeTenantId';
    yield serializers.serialize(
      object.activeTenantId,
      specifiedType: const FullType(TokenStorageKeysActiveTenantIdEnum),
    );
    yield r'permissionsCache';
    yield serializers.serialize(
      object.permissionsCache,
      specifiedType: const FullType(TokenStorageKeysPermissionsCacheEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenStorageKeys object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenStorageKeysBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenStorageKeysAccessTokenEnum),
          ) as TokenStorageKeysAccessTokenEnum;
          result.accessToken = valueDes;
          break;
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenStorageKeysRefreshTokenEnum),
          ) as TokenStorageKeysRefreshTokenEnum;
          result.refreshToken = valueDes;
          break;
        case r'activeTenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenStorageKeysActiveTenantIdEnum),
          ) as TokenStorageKeysActiveTenantIdEnum;
          result.activeTenantId = valueDes;
          break;
        case r'permissionsCache':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenStorageKeysPermissionsCacheEnum),
          ) as TokenStorageKeysPermissionsCacheEnum;
          result.permissionsCache = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenStorageKeys deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenStorageKeysBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

/// Bearer token
class TokenStorageKeysAccessTokenEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'lab.accessToken')
  static const TokenStorageKeysAccessTokenEnum labPeriodAccessToken =
      _$tokenStorageKeysAccessTokenEnum_labPeriodAccessToken;

  static Serializer<TokenStorageKeysAccessTokenEnum> get serializer =>
      _$tokenStorageKeysAccessTokenEnumSerializer;

  const TokenStorageKeysAccessTokenEnum._(String name) : super(name);

  static BuiltSet<TokenStorageKeysAccessTokenEnum> get values =>
      _$tokenStorageKeysAccessTokenEnumValues;
  static TokenStorageKeysAccessTokenEnum valueOf(String name) =>
      _$tokenStorageKeysAccessTokenEnumValueOf(name);
}

/// refresh token(与 accessToken 分存,便于隔离 XSS 影响面)
class TokenStorageKeysRefreshTokenEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'lab.refreshToken')
  static const TokenStorageKeysRefreshTokenEnum labPeriodRefreshToken =
      _$tokenStorageKeysRefreshTokenEnum_labPeriodRefreshToken;

  static Serializer<TokenStorageKeysRefreshTokenEnum> get serializer =>
      _$tokenStorageKeysRefreshTokenEnumSerializer;

  const TokenStorageKeysRefreshTokenEnum._(String name) : super(name);

  static BuiltSet<TokenStorageKeysRefreshTokenEnum> get values =>
      _$tokenStorageKeysRefreshTokenEnumValues;
  static TokenStorageKeysRefreshTokenEnum valueOf(String name) =>
      _$tokenStorageKeysRefreshTokenEnumValueOf(name);
}

/// 当前选中租户 ID(authenticated 态缓存)
class TokenStorageKeysActiveTenantIdEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'lab.activeTenantId')
  static const TokenStorageKeysActiveTenantIdEnum labPeriodActiveTenantId =
      _$tokenStorageKeysActiveTenantIdEnum_labPeriodActiveTenantId;

  static Serializer<TokenStorageKeysActiveTenantIdEnum> get serializer =>
      _$tokenStorageKeysActiveTenantIdEnumSerializer;

  const TokenStorageKeysActiveTenantIdEnum._(String name) : super(name);

  static BuiltSet<TokenStorageKeysActiveTenantIdEnum> get values =>
      _$tokenStorageKeysActiveTenantIdEnumValues;
  static TokenStorageKeysActiveTenantIdEnum valueOf(String name) =>
      _$tokenStorageKeysActiveTenantIdEnumValueOf(name);
}

/// permissions 缓存(避免每次路由跳转都打 /auth/permissions)
class TokenStorageKeysPermissionsCacheEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'lab.permissions')
  static const TokenStorageKeysPermissionsCacheEnum labPeriodPermissions =
      _$tokenStorageKeysPermissionsCacheEnum_labPeriodPermissions;

  static Serializer<TokenStorageKeysPermissionsCacheEnum> get serializer =>
      _$tokenStorageKeysPermissionsCacheEnumSerializer;

  const TokenStorageKeysPermissionsCacheEnum._(String name) : super(name);

  static BuiltSet<TokenStorageKeysPermissionsCacheEnum> get values =>
      _$tokenStorageKeysPermissionsCacheEnumValues;
  static TokenStorageKeysPermissionsCacheEnum valueOf(String name) =>
      _$tokenStorageKeysPermissionsCacheEnumValueOf(name);
}
