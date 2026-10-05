//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/o_auth_grant_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sso_callback_request.g.dart';

/// SsoCallbackRequest
///
/// Properties:
/// * [grantType]
/// * [code]
/// * [redirectUri]
/// * [state]
@BuiltValue()
abstract class SsoCallbackRequest
    implements Built<SsoCallbackRequest, SsoCallbackRequestBuilder> {
  @BuiltValueField(wireName: r'grant_type')
  OAuthGrantType get grantType;
  // enum grantTypeEnum {  authorization_code,  };

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'redirect_uri')
  String get redirectUri;

  @BuiltValueField(wireName: r'state')
  String get state;

  SsoCallbackRequest._();

  factory SsoCallbackRequest([void updates(SsoCallbackRequestBuilder b)]) =
      _$SsoCallbackRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SsoCallbackRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SsoCallbackRequest> get serializer =>
      _$SsoCallbackRequestSerializer();
}

class _$SsoCallbackRequestSerializer
    implements PrimitiveSerializer<SsoCallbackRequest> {
  @override
  final Iterable<Type> types = const [SsoCallbackRequest, _$SsoCallbackRequest];

  @override
  final String wireName = r'SsoCallbackRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SsoCallbackRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grant_type';
    yield serializers.serialize(
      object.grantType,
      specifiedType: const FullType(OAuthGrantType),
    );
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'redirect_uri';
    yield serializers.serialize(
      object.redirectUri,
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
    SsoCallbackRequest object, {
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
    required SsoCallbackRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grant_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OAuthGrantType),
          ) as OAuthGrantType;
          result.grantType = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'redirect_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.redirectUri = valueDes;
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
  SsoCallbackRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SsoCallbackRequestBuilder();
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
