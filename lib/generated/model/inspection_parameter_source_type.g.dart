// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_parameter_source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InspectionParameterSourceType _$official =
    const InspectionParameterSourceType._('official');
const InspectionParameterSourceType _$custom =
    const InspectionParameterSourceType._('custom');

InspectionParameterSourceType _$valueOf(String name) {
  switch (name) {
    case 'official':
      return _$official;
    case 'custom':
      return _$custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InspectionParameterSourceType> _$values =
    BuiltSet<InspectionParameterSourceType>(
      const <InspectionParameterSourceType>[_$official, _$custom],
    );

Serializer<InspectionParameterSourceType>
_$inspectionParameterSourceTypeSerializer =
    _$InspectionParameterSourceTypeSerializer();

class _$InspectionParameterSourceTypeSerializer
    implements PrimitiveSerializer<InspectionParameterSourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'official': 'official',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'official': 'official',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[InspectionParameterSourceType];
  @override
  final String wireName = 'InspectionParameterSourceType';

  @override
  Object serialize(
    Serializers serializers,
    InspectionParameterSourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InspectionParameterSourceType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InspectionParameterSourceType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
