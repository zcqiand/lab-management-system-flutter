//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_action.g.dart';

class FlowAction extends EnumClass {
  @BuiltValueEnumConst(wireName: r'submit')
  static const FlowAction submit = _$submit;
  @BuiltValueEnumConst(wireName: r'return')
  static const FlowAction return_ = _$return_;
  @BuiltValueEnumConst(wireName: r'withdraw')
  static const FlowAction withdraw = _$withdraw;

  static Serializer<FlowAction> get serializer => _$flowActionSerializer;

  const FlowAction._(String name) : super(name);

  static BuiltSet<FlowAction> get values => _$values;
  static FlowAction valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
