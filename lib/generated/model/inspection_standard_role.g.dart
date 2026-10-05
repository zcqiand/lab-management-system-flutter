// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_standard_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InspectionStandardRole _$TESTING = const InspectionStandardRole._(
  'TESTING',
);
const InspectionStandardRole _$JUDGMENT = const InspectionStandardRole._(
  'JUDGMENT',
);

InspectionStandardRole _$valueOf(String name) {
  switch (name) {
    case 'TESTING':
      return _$TESTING;
    case 'JUDGMENT':
      return _$JUDGMENT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InspectionStandardRole> _$values =
    BuiltSet<InspectionStandardRole>(const <InspectionStandardRole>[
      _$TESTING,
      _$JUDGMENT,
    ]);

Serializer<InspectionStandardRole> _$inspectionStandardRoleSerializer =
    _$InspectionStandardRoleSerializer();

class _$InspectionStandardRoleSerializer
    implements PrimitiveSerializer<InspectionStandardRole> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TESTING': 'TESTING',
    'JUDGMENT': 'JUDGMENT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TESTING': 'TESTING',
    'JUDGMENT': 'JUDGMENT',
  };

  @override
  final Iterable<Type> types = const <Type>[InspectionStandardRole];
  @override
  final String wireName = 'InspectionStandardRole';

  @override
  Object serialize(
    Serializers serializers,
    InspectionStandardRole object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InspectionStandardRole deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InspectionStandardRole.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
