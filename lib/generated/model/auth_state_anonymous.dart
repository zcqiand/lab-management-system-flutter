//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/auth_state_anonymous_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_anonymous.g.dart';

/// AuthStateAnonymous
///
/// Properties:
/// * [kind]
/// * [value]
@BuiltValue()
abstract class AuthStateAnonymous
    implements Built<AuthStateAnonymous, AuthStateAnonymousBuilder> {
  @BuiltValueField(wireName: r'kind')
  AuthStateAnonymousKindEnum get kind;
  // enum kindEnum {  anonymous,  };

  @BuiltValueField(wireName: r'value')
  AuthStateAnonymousValue get value;

  AuthStateAnonymous._();

  factory AuthStateAnonymous([void updates(AuthStateAnonymousBuilder b)]) =
      _$AuthStateAnonymous;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateAnonymousBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateAnonymous> get serializer =>
      _$AuthStateAnonymousSerializer();
}

class _$AuthStateAnonymousSerializer
    implements PrimitiveSerializer<AuthStateAnonymous> {
  @override
  final Iterable<Type> types = const [AuthStateAnonymous, _$AuthStateAnonymous];

  @override
  final String wireName = r'AuthStateAnonymous';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateAnonymous object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateAnonymousKindEnum),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AuthStateAnonymousValue),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAnonymous object, {
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
    required AuthStateAnonymousBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAnonymousKindEnum),
          ) as AuthStateAnonymousKindEnum;
          result.kind = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAnonymousValue),
          ) as AuthStateAnonymousValue;
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
  AuthStateAnonymous deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateAnonymousBuilder();
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

class AuthStateAnonymousKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'anonymous')
  static const AuthStateAnonymousKindEnum anonymous =
      _$authStateAnonymousKindEnum_anonymous;

  static Serializer<AuthStateAnonymousKindEnum> get serializer =>
      _$authStateAnonymousKindEnumSerializer;

  const AuthStateAnonymousKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateAnonymousKindEnum> get values =>
      _$authStateAnonymousKindEnumValues;
  static AuthStateAnonymousKindEnum valueOf(String name) =>
      _$authStateAnonymousKindEnumValueOf(name);
}
