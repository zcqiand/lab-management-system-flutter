// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_standard_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InspectionStandardStatus _$active = const InspectionStandardStatus._(
  'active',
);
const InspectionStandardStatus _$superseded = const InspectionStandardStatus._(
  'superseded',
);
const InspectionStandardStatus _$draft = const InspectionStandardStatus._(
  'draft',
);

InspectionStandardStatus _$valueOf(String name) {
  switch (name) {
    case 'active':
      return _$active;
    case 'superseded':
      return _$superseded;
    case 'draft':
      return _$draft;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InspectionStandardStatus> _$values =
    BuiltSet<InspectionStandardStatus>(const <InspectionStandardStatus>[
      _$active,
      _$superseded,
      _$draft,
    ]);

Serializer<InspectionStandardStatus> _$inspectionStandardStatusSerializer =
    _$InspectionStandardStatusSerializer();

class _$InspectionStandardStatusSerializer
    implements PrimitiveSerializer<InspectionStandardStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'superseded': 'superseded',
    'draft': 'draft',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'superseded': 'superseded',
    'draft': 'draft',
  };

  @override
  final Iterable<Type> types = const <Type>[InspectionStandardStatus];
  @override
  final String wireName = 'InspectionStandardStatus';

  @override
  Object serialize(
    Serializers serializers,
    InspectionStandardStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InspectionStandardStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InspectionStandardStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
