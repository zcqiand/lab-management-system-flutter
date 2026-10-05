//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/inspection_standard.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inspection_dictionary_list_standards200_response.g.dart';

/// InspectionDictionaryListStandards200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class InspectionDictionaryListStandards200Response
    implements
        Built<
          InspectionDictionaryListStandards200Response,
          InspectionDictionaryListStandards200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<InspectionStandard> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  InspectionDictionaryListStandards200Response._();

  factory InspectionDictionaryListStandards200Response([
    void updates(InspectionDictionaryListStandards200ResponseBuilder b),
  ]) = _$InspectionDictionaryListStandards200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    InspectionDictionaryListStandards200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InspectionDictionaryListStandards200Response>
  get serializer => _$InspectionDictionaryListStandards200ResponseSerializer();
}

class _$InspectionDictionaryListStandards200ResponseSerializer
    implements
        PrimitiveSerializer<InspectionDictionaryListStandards200Response> {
  @override
  final Iterable<Type> types = const [
    InspectionDictionaryListStandards200Response,
    _$InspectionDictionaryListStandards200Response,
  ];

  @override
  final String wireName = r'InspectionDictionaryListStandards200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InspectionDictionaryListStandards200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(InspectionStandard)]),
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
    InspectionDictionaryListStandards200Response object, {
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
    required InspectionDictionaryListStandards200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(InspectionStandard),
            ]),
          ) as BuiltList<InspectionStandard>;
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
  InspectionDictionaryListStandards200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InspectionDictionaryListStandards200ResponseBuilder();
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
