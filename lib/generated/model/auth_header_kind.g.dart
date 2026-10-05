// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_header_kind.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthHeaderKind _$authorization = const AuthHeaderKind._('authorization');
const AuthHeaderKind _$xAuthToken = const AuthHeaderKind._('xAuthToken');

AuthHeaderKind _$valueOf(String name) {
  switch (name) {
    case 'authorization':
      return _$authorization;
    case 'xAuthToken':
      return _$xAuthToken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthHeaderKind> _$values = BuiltSet<AuthHeaderKind>(
  const <AuthHeaderKind>[_$authorization, _$xAuthToken],
);

Serializer<AuthHeaderKind> _$authHeaderKindSerializer =
    _$AuthHeaderKindSerializer();

class _$AuthHeaderKindSerializer
    implements PrimitiveSerializer<AuthHeaderKind> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'authorization': 'Authorization',
    'xAuthToken': 'X-Auth-Token',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Authorization': 'authorization',
    'X-Auth-Token': 'xAuthToken',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthHeaderKind];
  @override
  final String wireName = 'AuthHeaderKind';

  @override
  Object serialize(
    Serializers serializers,
    AuthHeaderKind object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthHeaderKind deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthHeaderKind.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
