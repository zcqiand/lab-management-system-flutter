//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_status.g.dart';

class FlowStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'receiving')
  static const FlowStatus receiving = _$receiving;
  @BuiltValueEnumConst(wireName: r'task_assignment')
  static const FlowStatus taskAssignment = _$taskAssignment;
  @BuiltValueEnumConst(wireName: r'data_entry')
  static const FlowStatus dataEntry = _$dataEntry;
  @BuiltValueEnumConst(wireName: r'review')
  static const FlowStatus review = _$review;
  @BuiltValueEnumConst(wireName: r'approval')
  static const FlowStatus approval = _$approval;
  @BuiltValueEnumConst(wireName: r'issuance')
  static const FlowStatus issuance = _$issuance;
  @BuiltValueEnumConst(wireName: r'archived')
  static const FlowStatus archived = _$archived;
  @BuiltValueEnumConst(wireName: r'completed')
  static const FlowStatus completed = _$completed;

  static Serializer<FlowStatus> get serializer => _$flowStatusSerializer;

  const FlowStatus._(String name) : super(name);

  static BuiltSet<FlowStatus> get values => _$values;
  static FlowStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
