//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/sample_receipt.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'receipts_list_receipts200_response.g.dart';

/// ReceiptsListReceipts200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class ReceiptsListReceipts200Response
    implements
        Built<
          ReceiptsListReceipts200Response,
          ReceiptsListReceipts200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<SampleReceipt> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  ReceiptsListReceipts200Response._();

  factory ReceiptsListReceipts200Response([
    void updates(ReceiptsListReceipts200ResponseBuilder b),
  ]) = _$ReceiptsListReceipts200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReceiptsListReceipts200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReceiptsListReceipts200Response> get serializer =>
      _$ReceiptsListReceipts200ResponseSerializer();
}

class _$ReceiptsListReceipts200ResponseSerializer
    implements PrimitiveSerializer<ReceiptsListReceipts200Response> {
  @override
  final Iterable<Type> types = const [
    ReceiptsListReceipts200Response,
    _$ReceiptsListReceipts200Response,
  ];

  @override
  final String wireName = r'ReceiptsListReceipts200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReceiptsListReceipts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SampleReceipt)]),
    );
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'pageSize';
    yield serializers.serialize(
      object.pageSize,
      specifiedType: const FullType(int),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReceiptsListReceipts200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReceiptsListReceipts200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SampleReceipt)]),
          ) as BuiltList<SampleReceipt>;
          result.items.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReceiptsListReceipts200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReceiptsListReceipts200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
