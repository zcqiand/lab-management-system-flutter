//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/object_standard_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inspection_dictionary_list_object_standard_links200_response.g.dart';

/// InspectionDictionaryListObjectStandardLinks200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class InspectionDictionaryListObjectStandardLinks200Response
    implements
        Built<
          InspectionDictionaryListObjectStandardLinks200Response,
          InspectionDictionaryListObjectStandardLinks200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<ObjectStandardLink> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  InspectionDictionaryListObjectStandardLinks200Response._();

  factory InspectionDictionaryListObjectStandardLinks200Response([
    void updates(
      InspectionDictionaryListObjectStandardLinks200ResponseBuilder b,
    ),
  ]) = _$InspectionDictionaryListObjectStandardLinks200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    InspectionDictionaryListObjectStandardLinks200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InspectionDictionaryListObjectStandardLinks200Response>
  get serializer =>
      _$InspectionDictionaryListObjectStandardLinks200ResponseSerializer();
}

class _$InspectionDictionaryListObjectStandardLinks200ResponseSerializer
    implements
        PrimitiveSerializer<
          InspectionDictionaryListObjectStandardLinks200Response
        > {
  @override
  final Iterable<Type> types = const [
    InspectionDictionaryListObjectStandardLinks200Response,
    _$InspectionDictionaryListObjectStandardLinks200Response,
  ];

  @override
  final String wireName =
      r'InspectionDictionaryListObjectStandardLinks200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InspectionDictionaryListObjectStandardLinks200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ObjectStandardLink)]),
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
    InspectionDictionaryListObjectStandardLinks200Response object, {
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
    required InspectionDictionaryListObjectStandardLinks200ResponseBuilder
    result,
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
              FullType(ObjectStandardLink),
            ]),
          ) as BuiltList<ObjectStandardLink>;
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
  InspectionDictionaryListObjectStandardLinks200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        InspectionDictionaryListObjectStandardLinks200ResponseBuilder();
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
