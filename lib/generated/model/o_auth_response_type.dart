//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth_response_type.g.dart';

class OAuthResponseType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'code')
  static const OAuthResponseType code = _$code;

  static Serializer<OAuthResponseType> get serializer =>
      _$oAuthResponseTypeSerializer;

  const OAuthResponseType._(String name) : super(name);

  static BuiltSet<OAuthResponseType> get values => _$values;
  static OAuthResponseType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
