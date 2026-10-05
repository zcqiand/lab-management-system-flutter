//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'requirement_judgment_mode.g.dart';

class RequirementJudgmentMode extends EnumClass {
  @BuiltValueEnumConst(wireName: r'automatic')
  static const RequirementJudgmentMode automatic = _$automatic;
  @BuiltValueEnumConst(wireName: r'manual')
  static const RequirementJudgmentMode manual = _$manual;

  static Serializer<RequirementJudgmentMode> get serializer =>
      _$requirementJudgmentModeSerializer;

  const RequirementJudgmentMode._(String name) : super(name);

  static BuiltSet<RequirementJudgmentMode> get values => _$values;
  static RequirementJudgmentMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
