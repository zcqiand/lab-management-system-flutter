//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/inspection_parameter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inspection_dictionary_list_parameters200_response.g.dart';

/// InspectionDictionaryListParameters200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class InspectionDictionaryListParameters200Response
    implements
        Built<
          InspectionDictionaryListParameters200Response,
          InspectionDictionaryListParameters200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<InspectionParameter> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  InspectionDictionaryListParameters200Response._();

  factory InspectionDictionaryListParameters200Response([
    void updates(InspectionDictionaryListParameters200ResponseBuilder b),
  ]) = _$InspectionDictionaryListParameters200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    InspectionDictionaryListParameters200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InspectionDictionaryListParameters200Response>
  get serializer => _$InspectionDictionaryListParameters200ResponseSerializer();
}

class _$InspectionDictionaryListParameters200ResponseSerializer
    implements
        PrimitiveSerializer<InspectionDictionaryListParameters200Response> {
  @override
  final Iterable<Type> types = const [
    InspectionDictionaryListParameters200Response,
    _$InspectionDictionaryListParameters200Response,
  ];

  @override
  final String wireName = r'InspectionDictionaryListParameters200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InspectionDictionaryListParameters200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(InspectionParameter)]),
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
    InspectionDictionaryListParameters200Response object, {
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
    required InspectionDictionaryListParameters200ResponseBuilder result,
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
              FullType(InspectionParameter),
            ]),
          ) as BuiltList<InspectionParameter>;
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
  InspectionDictionaryListParameters200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InspectionDictionaryListParameters200ResponseBuilder();
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
