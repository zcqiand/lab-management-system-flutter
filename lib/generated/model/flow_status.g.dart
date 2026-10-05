// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlowStatus _$receiving = const FlowStatus._('receiving');
const FlowStatus _$taskAssignment = const FlowStatus._('taskAssignment');
const FlowStatus _$dataEntry = const FlowStatus._('dataEntry');
const FlowStatus _$review = const FlowStatus._('review');
const FlowStatus _$approval = const FlowStatus._('approval');
const FlowStatus _$issuance = const FlowStatus._('issuance');
const FlowStatus _$archived = const FlowStatus._('archived');
const FlowStatus _$completed = const FlowStatus._('completed');

FlowStatus _$valueOf(String name) {
  switch (name) {
    case 'receiving':
      return _$receiving;
    case 'taskAssignment':
      return _$taskAssignment;
    case 'dataEntry':
      return _$dataEntry;
    case 'review':
      return _$review;
    case 'approval':
      return _$approval;
    case 'issuance':
      return _$issuance;
    case 'archived':
      return _$archived;
    case 'completed':
      return _$completed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlowStatus> _$values = BuiltSet<FlowStatus>(const <FlowStatus>[
  _$receiving,
  _$taskAssignment,
  _$dataEntry,
  _$review,
  _$approval,
  _$issuance,
  _$archived,
  _$completed,
]);

Serializer<FlowStatus> _$flowStatusSerializer = _$FlowStatusSerializer();

class _$FlowStatusSerializer implements PrimitiveSerializer<FlowStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'receiving': 'receiving',
    'taskAssignment': 'task_assignment',
    'dataEntry': 'data_entry',
    'review': 'review',
    'approval': 'approval',
    'issuance': 'issuance',
    'archived': 'archived',
    'completed': 'completed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'receiving': 'receiving',
    'task_assignment': 'taskAssignment',
    'data_entry': 'dataEntry',
    'review': 'review',
    'approval': 'approval',
    'issuance': 'issuance',
    'archived': 'archived',
    'completed': 'completed',
  };

  @override
  final Iterable<Type> types = const <Type>[FlowStatus];
  @override
  final String wireName = 'FlowStatus';

  @override
  Object serialize(
    Serializers serializers,
    FlowStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FlowStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FlowStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
