//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth_grant_type.g.dart';

class OAuthGrantType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'authorization_code')
  static const OAuthGrantType authorizationCode = _$authorizationCode;

  static Serializer<OAuthGrantType> get serializer =>
      _$oAuthGrantTypeSerializer;

  const OAuthGrantType._(String name) : super(name);

  static BuiltSet<OAuthGrantType> get values => _$values;
  static OAuthGrantType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
