//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/sample.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'samples_list_samples200_response.g.dart';

/// SamplesListSamples200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class SamplesListSamples200Response
    implements
        Built<
          SamplesListSamples200Response,
          SamplesListSamples200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<Sample> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  SamplesListSamples200Response._();

  factory SamplesListSamples200Response([
    void updates(SamplesListSamples200ResponseBuilder b),
  ]) = _$SamplesListSamples200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SamplesListSamples200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SamplesListSamples200Response> get serializer =>
      _$SamplesListSamples200ResponseSerializer();
}

class _$SamplesListSamples200ResponseSerializer
    implements PrimitiveSerializer<SamplesListSamples200Response> {
  @override
  final Iterable<Type> types = const [
    SamplesListSamples200Response,
    _$SamplesListSamples200Response,
  ];

  @override
  final String wireName = r'SamplesListSamples200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SamplesListSamples200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Sample)]),
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
    SamplesListSamples200Response object, {
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
    required SamplesListSamples200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Sample)]),
          ) as BuiltList<Sample>;
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
  SamplesListSamples200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SamplesListSamples200ResponseBuilder();
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
