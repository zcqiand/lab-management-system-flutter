// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ext_field_def_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExtFieldDefType _$text = const ExtFieldDefType._('text');
const ExtFieldDefType _$number = const ExtFieldDefType._('number');
const ExtFieldDefType _$date = const ExtFieldDefType._('date');
const ExtFieldDefType _$select = const ExtFieldDefType._('select');

ExtFieldDefType _$valueOf(String name) {
  switch (name) {
    case 'text':
      return _$text;
    case 'number':
      return _$number;
    case 'date':
      return _$date;
    case 'select':
      return _$select;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExtFieldDefType> _$values = BuiltSet<ExtFieldDefType>(
  const <ExtFieldDefType>[_$text, _$number, _$date, _$select],
);

Serializer<ExtFieldDefType> _$extFieldDefTypeSerializer =
    _$ExtFieldDefTypeSerializer();

class _$ExtFieldDefTypeSerializer
    implements PrimitiveSerializer<ExtFieldDefType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'text': 'text',
    'number': 'number',
    'date': 'date',
    'select': 'select',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'text': 'text',
    'number': 'number',
    'date': 'date',
    'select': 'select',
  };

  @override
  final Iterable<Type> types = const <Type>[ExtFieldDefType];
  @override
  final String wireName = 'ExtFieldDefType';

  @override
  Object serialize(
    Serializers serializers,
    ExtFieldDefType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExtFieldDefType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExtFieldDefType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
