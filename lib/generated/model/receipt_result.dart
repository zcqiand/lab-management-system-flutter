//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'receipt_result.g.dart';

class ReceiptResult extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const ReceiptResult pass = _$pass;
  @BuiltValueEnumConst(wireName: r'fail')
  static const ReceiptResult fail = _$fail;
  @BuiltValueEnumConst(wireName: r'')
  static const ReceiptResult empty = _$empty;

  static Serializer<ReceiptResult> get serializer => _$receiptResultSerializer;

  const ReceiptResult._(String name) : super(name);

  static BuiltSet<ReceiptResult> get values => _$values;
  static ReceiptResult valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
