// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement_value_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RequirementValueType _$numeric = const RequirementValueType._('numeric');
const RequirementValueType _$string = const RequirementValueType._('string');
const RequirementValueType _$range = const RequirementValueType._('range');
const RequirementValueType _$formula = const RequirementValueType._('formula');
const RequirementValueType _$manual = const RequirementValueType._('manual');

RequirementValueType _$valueOf(String name) {
  switch (name) {
    case 'numeric':
      return _$numeric;
    case 'string':
      return _$string;
    case 'range':
      return _$range;
    case 'formula':
      return _$formula;
    case 'manual':
      return _$manual;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RequirementValueType> _$values = BuiltSet<RequirementValueType>(
  const <RequirementValueType>[
    _$numeric,
    _$string,
    _$range,
    _$formula,
    _$manual,
  ],
);

Serializer<RequirementValueType> _$requirementValueTypeSerializer =
    _$RequirementValueTypeSerializer();

class _$RequirementValueTypeSerializer
    implements PrimitiveSerializer<RequirementValueType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'numeric': 'numeric',
    'string': 'string',
    'range': 'range',
    'formula': 'formula',
    'manual': 'manual',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'numeric': 'numeric',
    'string': 'string',
    'range': 'range',
    'formula': 'formula',
    'manual': 'manual',
  };

  @override
  final Iterable<Type> types = const <Type>[RequirementValueType];
  @override
  final String wireName = 'RequirementValueType';

  @override
  Object serialize(
    Serializers serializers,
    RequirementValueType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RequirementValueType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RequirementValueType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
