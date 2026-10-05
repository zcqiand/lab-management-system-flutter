// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReceiptResult _$pass = const ReceiptResult._('pass');
const ReceiptResult _$fail = const ReceiptResult._('fail');
const ReceiptResult _$empty = const ReceiptResult._('empty');

ReceiptResult _$valueOf(String name) {
  switch (name) {
    case 'pass':
      return _$pass;
    case 'fail':
      return _$fail;
    case 'empty':
      return _$empty;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReceiptResult> _$values = BuiltSet<ReceiptResult>(
  const <ReceiptResult>[_$pass, _$fail, _$empty],
);

Serializer<ReceiptResult> _$receiptResultSerializer =
    _$ReceiptResultSerializer();

class _$ReceiptResultSerializer implements PrimitiveSerializer<ReceiptResult> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'pass',
    'fail': 'fail',
    'empty': '',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pass': 'pass',
    'fail': 'fail',
    '': 'empty',
  };

  @override
  final Iterable<Type> types = const <Type>[ReceiptResult];
  @override
  final String wireName = 'ReceiptResult';

  @override
  Object serialize(
    Serializers serializers,
    ReceiptResult object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReceiptResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReceiptResult.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
