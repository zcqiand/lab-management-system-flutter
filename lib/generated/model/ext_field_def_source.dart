//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ext_field_def_source.g.dart';

class ExtFieldDefSource extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sample')
  static const ExtFieldDefSource sample = _$sample;
  @BuiltValueEnumConst(wireName: r'receipt')
  static const ExtFieldDefSource receipt = _$receipt;

  static Serializer<ExtFieldDefSource> get serializer =>
      _$extFieldDefSourceSerializer;

  const ExtFieldDefSource._(String name) : super(name);

  static BuiltSet<ExtFieldDefSource> get values => _$values;
  static ExtFieldDefSource valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
