// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement_comparison.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RequirementComparison _$gte = const RequirementComparison._('gte');
const RequirementComparison _$lte = const RequirementComparison._('lte');
const RequirementComparison _$equal = const RequirementComparison._('equal');
const RequirementComparison _$range = const RequirementComparison._('range');
const RequirementComparison _$eq = const RequirementComparison._('eq');

RequirementComparison _$valueOf(String name) {
  switch (name) {
    case 'gte':
      return _$gte;
    case 'lte':
      return _$lte;
    case 'equal':
      return _$equal;
    case 'range':
      return _$range;
    case 'eq':
      return _$eq;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RequirementComparison> _$values =
    BuiltSet<RequirementComparison>(const <RequirementComparison>[
      _$gte,
      _$lte,
      _$equal,
      _$range,
      _$eq,
    ]);

Serializer<RequirementComparison> _$requirementComparisonSerializer =
    _$RequirementComparisonSerializer();

class _$RequirementComparisonSerializer
    implements PrimitiveSerializer<RequirementComparison> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gte': '≥',
    'lte': '≤',
    'equal': '=',
    'range': 'range',
    'eq': 'eq',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '≥': 'gte',
    '≤': 'lte',
    '=': 'equal',
    'range': 'range',
    'eq': 'eq',
  };

  @override
  final Iterable<Type> types = const <Type>[RequirementComparison];
  @override
  final String wireName = 'RequirementComparison';

  @override
  Object serialize(
    Serializers serializers,
    RequirementComparison object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RequirementComparison deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RequirementComparison.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
