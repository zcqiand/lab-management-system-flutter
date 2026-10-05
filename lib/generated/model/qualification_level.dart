//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qualification_level.g.dart';

class QualificationLevel extends EnumClass {
  @BuiltValueEnumConst(wireName: r'QUALIFIED')
  static const QualificationLevel QUALIFIED = _$QUALIFIED;
  @BuiltValueEnumConst(wireName: r'RESTRICTED')
  static const QualificationLevel RESTRICTED = _$RESTRICTED;

  static Serializer<QualificationLevel> get serializer =>
      _$qualificationLevelSerializer;

  const QualificationLevel._(String name) : super(name);

  static BuiltSet<QualificationLevel> get values => _$values;
  static QualificationLevel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
