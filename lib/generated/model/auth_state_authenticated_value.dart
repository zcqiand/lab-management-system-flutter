//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/my_tenant.dart';
import 'package:lab_management_system_flutter/generated/model/current_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_authenticated_value.g.dart';

/// AuthStateAuthenticatedValue
///
/// Properties:
/// * [kind]
/// * [user]
/// * [tenant]
/// * [permissions]
/// * [tokenExpiresAt] - unix ms
@BuiltValue()
abstract class AuthStateAuthenticatedValue
    implements
        Built<AuthStateAuthenticatedValue, AuthStateAuthenticatedValueBuilder> {
  @BuiltValueField(wireName: r'kind')
  AuthStateAuthenticatedValueKindEnum get kind;
  // enum kindEnum {  authenticated,  };

  @BuiltValueField(wireName: r'user')
  CurrentUser get user;

  @BuiltValueField(wireName: r'tenant')
  MyTenant get tenant;

  @BuiltValueField(wireName: r'permissions')
  BuiltList<String> get permissions;

  /// unix ms
  @BuiltValueField(wireName: r'tokenExpiresAt')
  int get tokenExpiresAt;

  AuthStateAuthenticatedValue._();

  factory AuthStateAuthenticatedValue([
    void updates(AuthStateAuthenticatedValueBuilder b),
  ]) = _$AuthStateAuthenticatedValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateAuthenticatedValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateAuthenticatedValue> get serializer =>
      _$AuthStateAuthenticatedValueSerializer();
}

class _$AuthStateAuthenticatedValueSerializer
    implements PrimitiveSerializer<AuthStateAuthenticatedValue> {
  @override
  final Iterable<Type> types = const [
    AuthStateAuthenticatedValue,
    _$AuthStateAuthenticatedValue,
  ];

  @override
  final String wireName = r'AuthStateAuthenticatedValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateAuthenticatedValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateAuthenticatedValueKindEnum),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(CurrentUser),
    );
    yield r'tenant';
    yield serializers.serialize(
      object.tenant,
      specifiedType: const FullType(MyTenant),
    );
    yield r'permissions';
    yield serializers.serialize(
      object.permissions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'tokenExpiresAt';
    yield serializers.serialize(
      object.tokenExpiresAt,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAuthenticatedValue object, {
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
    required AuthStateAuthenticatedValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAuthenticatedValueKindEnum),
          ) as AuthStateAuthenticatedValueKindEnum;
          result.kind = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CurrentUser),
          ) as CurrentUser;
          result.user.replace(valueDes);
          break;
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MyTenant),
          ) as MyTenant;
          result.tenant.replace(valueDes);
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.permissions.replace(valueDes);
          break;
        case r'tokenExpiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tokenExpiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthStateAuthenticatedValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateAuthenticatedValueBuilder();
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

class AuthStateAuthenticatedValueKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const AuthStateAuthenticatedValueKindEnum authenticated =
      _$authStateAuthenticatedValueKindEnum_authenticated;

  static Serializer<AuthStateAuthenticatedValueKindEnum> get serializer =>
      _$authStateAuthenticatedValueKindEnumSerializer;

  const AuthStateAuthenticatedValueKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateAuthenticatedValueKindEnum> get values =>
      _$authStateAuthenticatedValueKindEnumValues;
  static AuthStateAuthenticatedValueKindEnum valueOf(String name) =>
      _$authStateAuthenticatedValueKindEnumValueOf(name);
}
