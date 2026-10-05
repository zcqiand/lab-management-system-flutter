//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/my_tenant.dart';
import 'package:lab_management_system_flutter/generated/model/current_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_awaiting_tenant_value.g.dart';

/// AuthStateAwaitingTenantValue
///
/// Properties:
/// * [kind]
/// * [user]
/// * [tenants]
@BuiltValue()
abstract class AuthStateAwaitingTenantValue
    implements
        Built<
          AuthStateAwaitingTenantValue,
          AuthStateAwaitingTenantValueBuilder
        > {
  @BuiltValueField(wireName: r'kind')
  AuthStateAwaitingTenantValueKindEnum get kind;
  // enum kindEnum {  awaiting_tenant,  };

  @BuiltValueField(wireName: r'user')
  CurrentUser get user;

  @BuiltValueField(wireName: r'tenants')
  BuiltList<MyTenant> get tenants;

  AuthStateAwaitingTenantValue._();

  factory AuthStateAwaitingTenantValue([
    void updates(AuthStateAwaitingTenantValueBuilder b),
  ]) = _$AuthStateAwaitingTenantValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateAwaitingTenantValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateAwaitingTenantValue> get serializer =>
      _$AuthStateAwaitingTenantValueSerializer();
}

class _$AuthStateAwaitingTenantValueSerializer
    implements PrimitiveSerializer<AuthStateAwaitingTenantValue> {
  @override
  final Iterable<Type> types = const [
    AuthStateAwaitingTenantValue,
    _$AuthStateAwaitingTenantValue,
  ];

  @override
  final String wireName = r'AuthStateAwaitingTenantValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateAwaitingTenantValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateAwaitingTenantValueKindEnum),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(CurrentUser),
    );
    yield r'tenants';
    yield serializers.serialize(
      object.tenants,
      specifiedType: const FullType(BuiltList, [FullType(MyTenant)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAwaitingTenantValue object, {
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
    required AuthStateAwaitingTenantValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAwaitingTenantValueKindEnum),
          ) as AuthStateAwaitingTenantValueKindEnum;
          result.kind = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CurrentUser),
          ) as CurrentUser;
          result.user.replace(valueDes);
          break;
        case r'tenants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MyTenant)]),
          ) as BuiltList<MyTenant>;
          result.tenants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthStateAwaitingTenantValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateAwaitingTenantValueBuilder();
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

class AuthStateAwaitingTenantValueKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'awaiting_tenant')
  static const AuthStateAwaitingTenantValueKindEnum awaitingTenant =
      _$authStateAwaitingTenantValueKindEnum_awaitingTenant;

  static Serializer<AuthStateAwaitingTenantValueKindEnum> get serializer =>
      _$authStateAwaitingTenantValueKindEnumSerializer;

  const AuthStateAwaitingTenantValueKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateAwaitingTenantValueKindEnum> get values =>
      _$authStateAwaitingTenantValueKindEnumValues;
  static AuthStateAwaitingTenantValueKindEnum valueOf(String name) =>
      _$authStateAwaitingTenantValueKindEnumValueOf(name);
}
