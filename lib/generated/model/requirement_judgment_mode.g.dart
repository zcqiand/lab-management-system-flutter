// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement_judgment_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RequirementJudgmentMode _$automatic = const RequirementJudgmentMode._(
  'automatic',
);
const RequirementJudgmentMode _$manual = const RequirementJudgmentMode._(
  'manual',
);

RequirementJudgmentMode _$valueOf(String name) {
  switch (name) {
    case 'automatic':
      return _$automatic;
    case 'manual':
      return _$manual;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RequirementJudgmentMode> _$values =
    BuiltSet<RequirementJudgmentMode>(const <RequirementJudgmentMode>[
      _$automatic,
      _$manual,
    ]);

Serializer<RequirementJudgmentMode> _$requirementJudgmentModeSerializer =
    _$RequirementJudgmentModeSerializer();

class _$RequirementJudgmentModeSerializer
    implements PrimitiveSerializer<RequirementJudgmentMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'automatic': 'automatic',
    'manual': 'manual',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'automatic': 'automatic',
    'manual': 'manual',
  };

  @override
  final Iterable<Type> types = const <Type>[RequirementJudgmentMode];
  @override
  final String wireName = 'RequirementJudgmentMode';

  @override
  Object serialize(
    Serializers serializers,
    RequirementJudgmentMode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RequirementJudgmentMode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RequirementJudgmentMode.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
