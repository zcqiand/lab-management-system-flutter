// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BackendId _$nextjs = const BackendId._('nextjs');
const BackendId _$springboot = const BackendId._('springboot');
const BackendId _$aspnetcore = const BackendId._('aspnetcore');

BackendId _$valueOf(String name) {
  switch (name) {
    case 'nextjs':
      return _$nextjs;
    case 'springboot':
      return _$springboot;
    case 'aspnetcore':
      return _$aspnetcore;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BackendId> _$values = BuiltSet<BackendId>(const <BackendId>[
  _$nextjs,
  _$springboot,
  _$aspnetcore,
]);

Serializer<BackendId> _$backendIdSerializer = _$BackendIdSerializer();

class _$BackendIdSerializer implements PrimitiveSerializer<BackendId> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'nextjs': 'nextjs',
    'springboot': 'springboot',
    'aspnetcore': 'aspnetcore',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'nextjs': 'nextjs',
    'springboot': 'springboot',
    'aspnetcore': 'aspnetcore',
  };

  @override
  final Iterable<Type> types = const <Type>[BackendId];
  @override
  final String wireName = 'BackendId';

  @override
  Object serialize(
    Serializers serializers,
    BackendId object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BackendId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BackendId.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
