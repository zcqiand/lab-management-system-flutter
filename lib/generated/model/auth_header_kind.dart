//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_header_kind.g.dart';

/// 已废弃 (ADR-0014)
class AuthHeaderKind extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Authorization')
  static const AuthHeaderKind authorization = _$authorization;
  @BuiltValueEnumConst(wireName: r'X-Auth-Token')
  static const AuthHeaderKind xAuthToken = _$xAuthToken;

  static Serializer<AuthHeaderKind> get serializer =>
      _$authHeaderKindSerializer;

  const AuthHeaderKind._(String name) : super(name);

  static BuiltSet<AuthHeaderKind> get values => _$values;
  static AuthHeaderKind valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
