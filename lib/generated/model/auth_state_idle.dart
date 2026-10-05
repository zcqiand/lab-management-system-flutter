//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_idle_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_idle.g.dart';

/// AuthStateIdle
///
/// Properties:
/// * [kind]
/// * [value]
@BuiltValue()
abstract class AuthStateIdle
    implements Built<AuthStateIdle, AuthStateIdleBuilder> {
  @BuiltValueField(wireName: r'kind')
  AuthStateIdleKindEnum get kind;
  // enum kindEnum {  idle,  };

  @BuiltValueField(wireName: r'value')
  AuthStateIdleValue get value;

  AuthStateIdle._();

  factory AuthStateIdle([void updates(AuthStateIdleBuilder b)]) =
      _$AuthStateIdle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateIdleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateIdle> get serializer =>
      _$AuthStateIdleSerializer();
}

class _$AuthStateIdleSerializer implements PrimitiveSerializer<AuthStateIdle> {
  @override
  final Iterable<Type> types = const [AuthStateIdle, _$AuthStateIdle];

  @override
  final String wireName = r'AuthStateIdle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateIdle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateIdleKindEnum),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AuthStateIdleValue),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateIdle object, {
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
    required AuthStateIdleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateIdleKindEnum),
          ) as AuthStateIdleKindEnum;
          result.kind = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateIdleValue),
          ) as AuthStateIdleValue;
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
  AuthStateIdle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateIdleBuilder();
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

class AuthStateIdleKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'idle')
  static const AuthStateIdleKindEnum idle = _$authStateIdleKindEnum_idle;

  static Serializer<AuthStateIdleKindEnum> get serializer =>
      _$authStateIdleKindEnumSerializer;

  const AuthStateIdleKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateIdleKindEnum> get values =>
      _$authStateIdleKindEnumValues;
  static AuthStateIdleKindEnum valueOf(String name) =>
      _$authStateIdleKindEnumValueOf(name);
}
