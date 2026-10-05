//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'requirement_verification_status.g.dart';

class RequirementVerificationStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'draft')
  static const RequirementVerificationStatus draft = _$draft;
  @BuiltValueEnumConst(wireName: r'reviewed')
  static const RequirementVerificationStatus reviewed = _$reviewed;
  @BuiltValueEnumConst(wireName: r'verified')
  static const RequirementVerificationStatus verified = _$verified;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const RequirementVerificationStatus rejected = _$rejected;

  static Serializer<RequirementVerificationStatus> get serializer =>
      _$requirementVerificationStatusSerializer;

  const RequirementVerificationStatus._(String name) : super(name);

  static BuiltSet<RequirementVerificationStatus> get values => _$values;
  static RequirementVerificationStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
