// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlowAction _$submit = const FlowAction._('submit');
const FlowAction _$return_ = const FlowAction._('return_');
const FlowAction _$withdraw = const FlowAction._('withdraw');

FlowAction _$valueOf(String name) {
  switch (name) {
    case 'submit':
      return _$submit;
    case 'return_':
      return _$return_;
    case 'withdraw':
      return _$withdraw;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlowAction> _$values = BuiltSet<FlowAction>(const <FlowAction>[
  _$submit,
  _$return_,
  _$withdraw,
]);

Serializer<FlowAction> _$flowActionSerializer = _$FlowActionSerializer();

class _$FlowActionSerializer implements PrimitiveSerializer<FlowAction> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'submit': 'submit',
    'return_': 'return',
    'withdraw': 'withdraw',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'submit': 'submit',
    'return': 'return_',
    'withdraw': 'withdraw',
  };

  @override
  final Iterable<Type> types = const <Type>[FlowAction];
  @override
  final String wireName = 'FlowAction';

  @override
  Object serialize(
    Serializers serializers,
    FlowAction object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FlowAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FlowAction.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
