//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state_anonymous_value.g.dart';

/// AuthStateAnonymousValue
///
/// Properties:
/// * [kind]
@BuiltValue()
abstract class AuthStateAnonymousValue
    implements Built<AuthStateAnonymousValue, AuthStateAnonymousValueBuilder> {
  @BuiltValueField(wireName: r'kind')
  AuthStateAnonymousValueKindEnum get kind;
  // enum kindEnum {  anonymous,  };

  AuthStateAnonymousValue._();

  factory AuthStateAnonymousValue([
    void updates(AuthStateAnonymousValueBuilder b),
  ]) = _$AuthStateAnonymousValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateAnonymousValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthStateAnonymousValue> get serializer =>
      _$AuthStateAnonymousValueSerializer();
}

class _$AuthStateAnonymousValueSerializer
    implements PrimitiveSerializer<AuthStateAnonymousValue> {
  @override
  final Iterable<Type> types = const [
    AuthStateAnonymousValue,
    _$AuthStateAnonymousValue,
  ];

  @override
  final String wireName = r'AuthStateAnonymousValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthStateAnonymousValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AuthStateAnonymousValueKindEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAnonymousValue object, {
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
    required AuthStateAnonymousValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthStateAnonymousValueKindEnum),
          ) as AuthStateAnonymousValueKindEnum;
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
  AuthStateAnonymousValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateAnonymousValueBuilder();
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

class AuthStateAnonymousValueKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'anonymous')
  static const AuthStateAnonymousValueKindEnum anonymous =
      _$authStateAnonymousValueKindEnum_anonymous;

  static Serializer<AuthStateAnonymousValueKindEnum> get serializer =>
      _$authStateAnonymousValueKindEnumSerializer;

  const AuthStateAnonymousValueKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateAnonymousValueKindEnum> get values =>
      _$authStateAnonymousValueKindEnumValues;
  static AuthStateAnonymousValueKindEnum valueOf(String name) =>
      _$authStateAnonymousValueKindEnumValueOf(name);
}
