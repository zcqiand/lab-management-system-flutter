//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/object_parameter_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inspection_dictionary_list_object_parameter_links200_response.g.dart';

/// InspectionDictionaryListObjectParameterLinks200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class InspectionDictionaryListObjectParameterLinks200Response
    implements
        Built<
          InspectionDictionaryListObjectParameterLinks200Response,
          InspectionDictionaryListObjectParameterLinks200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<ObjectParameterLink> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  InspectionDictionaryListObjectParameterLinks200Response._();

  factory InspectionDictionaryListObjectParameterLinks200Response([
    void updates(
      InspectionDictionaryListObjectParameterLinks200ResponseBuilder b,
    ),
  ]) = _$InspectionDictionaryListObjectParameterLinks200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    InspectionDictionaryListObjectParameterLinks200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InspectionDictionaryListObjectParameterLinks200Response>
  get serializer =>
      _$InspectionDictionaryListObjectParameterLinks200ResponseSerializer();
}

class _$InspectionDictionaryListObjectParameterLinks200ResponseSerializer
    implements
        PrimitiveSerializer<
          InspectionDictionaryListObjectParameterLinks200Response
        > {
  @override
  final Iterable<Type> types = const [
    InspectionDictionaryListObjectParameterLinks200Response,
    _$InspectionDictionaryListObjectParameterLinks200Response,
  ];

  @override
  final String wireName =
      r'InspectionDictionaryListObjectParameterLinks200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InspectionDictionaryListObjectParameterLinks200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ObjectParameterLink)]),
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
    InspectionDictionaryListObjectParameterLinks200Response object, {
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
    required InspectionDictionaryListObjectParameterLinks200ResponseBuilder
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
              FullType(ObjectParameterLink),
            ]),
          ) as BuiltList<ObjectParameterLink>;
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
  InspectionDictionaryListObjectParameterLinks200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        InspectionDictionaryListObjectParameterLinks200ResponseBuilder();
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
