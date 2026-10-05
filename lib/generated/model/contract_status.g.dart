// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContractStatus _$active = const ContractStatus._('active');
const ContractStatus _$archived = const ContractStatus._('archived');

ContractStatus _$valueOf(String name) {
  switch (name) {
    case 'active':
      return _$active;
    case 'archived':
      return _$archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ContractStatus> _$values = BuiltSet<ContractStatus>(
  const <ContractStatus>[_$active, _$archived],
);

Serializer<ContractStatus> _$contractStatusSerializer =
    _$ContractStatusSerializer();

class _$ContractStatusSerializer
    implements PrimitiveSerializer<ContractStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'archived': 'archived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'archived': 'archived',
  };

  @override
  final Iterable<Type> types = const <Type>[ContractStatus];
  @override
  final String wireName = 'ContractStatus';

  @override
  Object serialize(
    Serializers serializers,
    ContractStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ContractStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ContractStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
