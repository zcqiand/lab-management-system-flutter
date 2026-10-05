//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ext_field_def_type.g.dart';

class ExtFieldDefType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'text')
  static const ExtFieldDefType text = _$text;
  @BuiltValueEnumConst(wireName: r'number')
  static const ExtFieldDefType number = _$number;
  @BuiltValueEnumConst(wireName: r'date')
  static const ExtFieldDefType date = _$date;
  @BuiltValueEnumConst(wireName: r'select')
  static const ExtFieldDefType select = _$select;

  static Serializer<ExtFieldDefType> get serializer =>
      _$extFieldDefTypeSerializer;

  const ExtFieldDefType._(String name) : super(name);

  static BuiltSet<ExtFieldDefType> get values => _$values;
  static ExtFieldDefType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
