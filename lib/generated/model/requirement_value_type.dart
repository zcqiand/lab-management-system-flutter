//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'requirement_value_type.g.dart';

class RequirementValueType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'numeric')
  static const RequirementValueType numeric = _$numeric;
  @BuiltValueEnumConst(wireName: r'string')
  static const RequirementValueType string = _$string;
  @BuiltValueEnumConst(wireName: r'range')
  static const RequirementValueType range = _$range;
  @BuiltValueEnumConst(wireName: r'formula')
  static const RequirementValueType formula = _$formula;
  @BuiltValueEnumConst(wireName: r'manual')
  static const RequirementValueType manual = _$manual;

  static Serializer<RequirementValueType> get serializer =>
      _$requirementValueTypeSerializer;

  const RequirementValueType._(String name) : super(name);

  static BuiltSet<RequirementValueType> get values => _$values;
  static RequirementValueType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
