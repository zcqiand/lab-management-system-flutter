//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_awaiting_tenant_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_awaiting_tenant.g.dart';

/// AuthStateAwaitingTenant
///
/// Properties:
/// * [kind]
/// * [value]
@BuiltValue()
abstract class AuthStateAwaitingTenant
    implements Built<AuthStateAwaitingTenant, AuthStateAwaitingTenantBuilder> {
  @BuiltValueField(wireName: r'kind')
  AuthStateAwaitingTenantKindEnum get kind;
  // enum kindEnum {  awaiting_tenant,  };

  @BuiltValueField(wireName: r'value')
  AuthStateAwaitingTenantValue get value;

  AuthStateAwaitingTenant._();

  factory AuthStateAwaitingTenant([
    void updates(AuthStateAwaitingTenantBuilder b),
  ]) = _$AuthStateAwaitingTenant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateAwaitingTenantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateAwaitingTenant> get serializer =>
      _$AuthStateAwaitingTenantSerializer();
}

class _$AuthStateAwaitingTenantSerializer
    implements PrimitiveSerializer<AuthStateAwaitingTenant> {
  @override
  final Iterable<Type> types = const [
    AuthStateAwaitingTenant,
    _$AuthStateAwaitingTenant,
  ];

  @override
  final String wireName = r'AuthStateAwaitingTenant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateAwaitingTenant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateAwaitingTenantKindEnum),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AuthStateAwaitingTenantValue),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAwaitingTenant object, {
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
    required AuthStateAwaitingTenantBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAwaitingTenantKindEnum),
          ) as AuthStateAwaitingTenantKindEnum;
          result.kind = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAwaitingTenantValue),
          ) as AuthStateAwaitingTenantValue;
          result.value.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthStateAwaitingTenant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateAwaitingTenantBuilder();
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

class AuthStateAwaitingTenantKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'awaiting_tenant')
  static const AuthStateAwaitingTenantKindEnum awaitingTenant =
      _$authStateAwaitingTenantKindEnum_awaitingTenant;

  static Serializer<AuthStateAwaitingTenantKindEnum> get serializer =>
      _$authStateAwaitingTenantKindEnumSerializer;

  const AuthStateAwaitingTenantKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateAwaitingTenantKindEnum> get values =>
      _$authStateAwaitingTenantKindEnumValues;
  static AuthStateAwaitingTenantKindEnum valueOf(String name) =>
      _$authStateAwaitingTenantKindEnumValueOf(name);
}
