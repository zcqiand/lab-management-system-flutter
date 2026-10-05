// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth_response_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OAuthResponseType _$code = const OAuthResponseType._('code');

OAuthResponseType _$valueOf(String name) {
  switch (name) {
    case 'code':
      return _$code;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OAuthResponseType> _$values = BuiltSet<OAuthResponseType>(
  const <OAuthResponseType>[_$code],
);

Serializer<OAuthResponseType> _$oAuthResponseTypeSerializer =
    _$OAuthResponseTypeSerializer();

class _$OAuthResponseTypeSerializer
    implements PrimitiveSerializer<OAuthResponseType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'code': 'code',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'code': 'code',
  };

  @override
  final Iterable<Type> types = const <Type>[OAuthResponseType];
  @override
  final String wireName = 'OAuthResponseType';

  @override
  Object serialize(
    Serializers serializers,
    OAuthResponseType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OAuthResponseType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OAuthResponseType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
