//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/test_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_records_list_test_records200_response.g.dart';

/// TestRecordsListTestRecords200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class TestRecordsListTestRecords200Response
    implements
        Built<
          TestRecordsListTestRecords200Response,
          TestRecordsListTestRecords200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<TestRecord> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  TestRecordsListTestRecords200Response._();

  factory TestRecordsListTestRecords200Response([
    void updates(TestRecordsListTestRecords200ResponseBuilder b),
  ]) = _$TestRecordsListTestRecords200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRecordsListTestRecords200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRecordsListTestRecords200Response> get serializer =>
      _$TestRecordsListTestRecords200ResponseSerializer();
}

class _$TestRecordsListTestRecords200ResponseSerializer
    implements PrimitiveSerializer<TestRecordsListTestRecords200Response> {
  @override
  final Iterable<Type> types = const [
    TestRecordsListTestRecords200Response,
    _$TestRecordsListTestRecords200Response,
  ];

  @override
  final String wireName = r'TestRecordsListTestRecords200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRecordsListTestRecords200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(TestRecord)]),
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
    TestRecordsListTestRecords200Response object, {
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
    required TestRecordsListTestRecords200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TestRecord)]),
          ) as BuiltList<TestRecord>;
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
  TestRecordsListTestRecords200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRecordsListTestRecords200ResponseBuilder();
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
