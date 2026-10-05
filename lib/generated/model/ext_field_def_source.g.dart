// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ext_field_def_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExtFieldDefSource _$sample = const ExtFieldDefSource._('sample');
const ExtFieldDefSource _$receipt = const ExtFieldDefSource._('receipt');

ExtFieldDefSource _$valueOf(String name) {
  switch (name) {
    case 'sample':
      return _$sample;
    case 'receipt':
      return _$receipt;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExtFieldDefSource> _$values = BuiltSet<ExtFieldDefSource>(
  const <ExtFieldDefSource>[_$sample, _$receipt],
);

Serializer<ExtFieldDefSource> _$extFieldDefSourceSerializer =
    _$ExtFieldDefSourceSerializer();

class _$ExtFieldDefSourceSerializer
    implements PrimitiveSerializer<ExtFieldDefSource> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sample': 'sample',
    'receipt': 'receipt',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sample': 'sample',
    'receipt': 'receipt',
  };

  @override
  final Iterable<Type> types = const <Type>[ExtFieldDefSource];
  @override
  final String wireName = 'ExtFieldDefSource';

  @override
  Object serialize(
    Serializers serializers,
    ExtFieldDefSource object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExtFieldDefSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExtFieldDefSource.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
