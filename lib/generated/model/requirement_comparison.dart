//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'requirement_comparison.g.dart';

class RequirementComparison extends EnumClass {
  @BuiltValueEnumConst(wireName: r'≥')
  static const RequirementComparison gte = _$gte;
  @BuiltValueEnumConst(wireName: r'≤')
  static const RequirementComparison lte = _$lte;
  @BuiltValueEnumConst(wireName: r'=')
  static const RequirementComparison equal = _$equal;
  @BuiltValueEnumConst(wireName: r'range')
  static const RequirementComparison range = _$range;
  @BuiltValueEnumConst(wireName: r'eq')
  static const RequirementComparison eq = _$eq;

  static Serializer<RequirementComparison> get serializer =>
      _$requirementComparisonSerializer;

  const RequirementComparison._(String name) : super(name);

  static BuiltSet<RequirementComparison> get values => _$values;
  static RequirementComparison valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
