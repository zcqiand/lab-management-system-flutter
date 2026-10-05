//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_sample_ext_request.g.dart';

/// UpdateSampleExtRequest
///
/// Properties:
/// * [ext]
@BuiltValue()
abstract class UpdateSampleExtRequest
    implements Built<UpdateSampleExtRequest, UpdateSampleExtRequestBuilder> {
  @BuiltValueField(wireName: r'ext')
  BuiltMap<String, String> get ext;

  UpdateSampleExtRequest._();

  factory UpdateSampleExtRequest([
    void updates(UpdateSampleExtRequestBuilder b),
  ]) = _$UpdateSampleExtRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSampleExtRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSampleExtRequest> get serializer =>
      _$UpdateSampleExtRequestSerializer();
}

class _$UpdateSampleExtRequestSerializer
    implements PrimitiveSerializer<UpdateSampleExtRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateSampleExtRequest,
    _$UpdateSampleExtRequest,
  ];

  @override
  final String wireName = r'UpdateSampleExtRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSampleExtRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ext';
    yield serializers.serialize(
      object.ext,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(String),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateSampleExtRequest object, {
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
    required UpdateSampleExtRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
          ) as BuiltMap<String, String>;
          result.ext.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateSampleExtRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSampleExtRequestBuilder();
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
