//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sso_redirect.g.dart';

/// SsoRedirect
///
/// Properties:
/// * [authorizeUrl]
/// * [state]
@BuiltValue()
abstract class SsoRedirect implements Built<SsoRedirect, SsoRedirectBuilder> {
  @BuiltValueField(wireName: r'authorizeUrl')
  String get authorizeUrl;

  @BuiltValueField(wireName: r'state')
  String get state;

  SsoRedirect._();

  factory SsoRedirect([void updates(SsoRedirectBuilder b)]) = _$SsoRedirect;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SsoRedirectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SsoRedirect> get serializer => _$SsoRedirectSerializer();
}

class _$SsoRedirectSerializer implements PrimitiveSerializer<SsoRedirect> {
  @override
  final Iterable<Type> types = const [SsoRedirect, _$SsoRedirect];

  @override
  final String wireName = r'SsoRedirect';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SsoRedirect object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'authorizeUrl';
    yield serializers.serialize(
      object.authorizeUrl,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SsoRedirect object, {
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
    required SsoRedirectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authorizeUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorizeUrl = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SsoRedirect deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SsoRedirectBuilder();
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
