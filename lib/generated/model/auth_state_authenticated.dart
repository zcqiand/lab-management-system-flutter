//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_authenticated_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_authenticated.g.dart';

/// AuthStateAuthenticated
///
/// Properties:
/// * [kind]
/// * [value]
@BuiltValue()
abstract class AuthStateAuthenticated
    implements Built<AuthStateAuthenticated, AuthStateAuthenticatedBuilder> {
  @BuiltValueField(wireName: r'kind')
  AuthStateAuthenticatedKindEnum get kind;
  // enum kindEnum {  authenticated,  };

  @BuiltValueField(wireName: r'value')
  AuthStateAuthenticatedValue get value;

  AuthStateAuthenticated._();

  factory AuthStateAuthenticated([
    void updates(AuthStateAuthenticatedBuilder b),
  ]) = _$AuthStateAuthenticated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateAuthenticatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateAuthenticated> get serializer =>
      _$AuthStateAuthenticatedSerializer();
}

class _$AuthStateAuthenticatedSerializer
    implements PrimitiveSerializer<AuthStateAuthenticated> {
  @override
  final Iterable<Type> types = const [
    AuthStateAuthenticated,
    _$AuthStateAuthenticated,
  ];

  @override
  final String wireName = r'AuthStateAuthenticated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateAuthenticated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateAuthenticatedKindEnum),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AuthStateAuthenticatedValue),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAuthenticated object, {
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
    required AuthStateAuthenticatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAuthenticatedKindEnum),
          ) as AuthStateAuthenticatedKindEnum;
          result.kind = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAuthenticatedValue),
          ) as AuthStateAuthenticatedValue;
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
  AuthStateAuthenticated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateAuthenticatedBuilder();
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

class AuthStateAuthenticatedKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const AuthStateAuthenticatedKindEnum authenticated =
      _$authStateAuthenticatedKindEnum_authenticated;

  static Serializer<AuthStateAuthenticatedKindEnum> get serializer =>
      _$authStateAuthenticatedKindEnumSerializer;

  const AuthStateAuthenticatedKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateAuthenticatedKindEnum> get values =>
      _$authStateAuthenticatedKindEnumValues;
  static AuthStateAuthenticatedKindEnum valueOf(String name) =>
      _$authStateAuthenticatedKindEnumValueOf(name);
}
