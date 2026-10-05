// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth_grant_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OAuthGrantType _$authorizationCode = const OAuthGrantType._(
  'authorizationCode',
);

OAuthGrantType _$valueOf(String name) {
  switch (name) {
    case 'authorizationCode':
      return _$authorizationCode;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OAuthGrantType> _$values = BuiltSet<OAuthGrantType>(
  const <OAuthGrantType>[_$authorizationCode],
);

Serializer<OAuthGrantType> _$oAuthGrantTypeSerializer =
    _$OAuthGrantTypeSerializer();

class _$OAuthGrantTypeSerializer
    implements PrimitiveSerializer<OAuthGrantType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'authorizationCode': 'authorization_code',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'authorization_code': 'authorizationCode',
  };

  @override
  final Iterable<Type> types = const <Type>[OAuthGrantType];
  @override
  final String wireName = 'OAuthGrantType';

  @override
  Object serialize(
    Serializers serializers,
    OAuthGrantType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OAuthGrantType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OAuthGrantType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
