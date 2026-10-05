//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_idle_value.g.dart';

/// AuthStateIdleValue
///
/// Properties:
/// * [kind]
@BuiltValue()
abstract class AuthStateIdleValue
    implements Built<AuthStateIdleValue, AuthStateIdleValueBuilder> {
  @BuiltValueField(wireName: r'kind')
  AuthStateIdleValueKindEnum get kind;
  // enum kindEnum {  idle,  };

  AuthStateIdleValue._();

  factory AuthStateIdleValue([void updates(AuthStateIdleValueBuilder b)]) =
      _$AuthStateIdleValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateIdleValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateIdleValue> get serializer =>
      _$AuthStateIdleValueSerializer();
}

class _$AuthStateIdleValueSerializer
    implements PrimitiveSerializer<AuthStateIdleValue> {
  @override
  final Iterable<Type> types = const [AuthStateIdleValue, _$AuthStateIdleValue];

  @override
  final String wireName = r'AuthStateIdleValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateIdleValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateIdleValueKindEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateIdleValue object, {
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
    required AuthStateIdleValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateIdleValueKindEnum),
          ) as AuthStateIdleValueKindEnum;
          result.kind = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthStateIdleValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateIdleValueBuilder();
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

class AuthStateIdleValueKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'idle')
  static const AuthStateIdleValueKindEnum idle =
      _$authStateIdleValueKindEnum_idle;

  static Serializer<AuthStateIdleValueKindEnum> get serializer =>
      _$authStateIdleValueKindEnumSerializer;

  const AuthStateIdleValueKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateIdleValueKindEnum> get values =>
      _$authStateIdleValueKindEnumValues;
  static AuthStateIdleValueKindEnum valueOf(String name) =>
      _$authStateIdleValueKindEnumValueOf(name);
}
