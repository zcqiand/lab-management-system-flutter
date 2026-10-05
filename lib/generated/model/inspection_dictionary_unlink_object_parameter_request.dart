//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inspection_dictionary_unlink_object_parameter_request.g.dart';

/// InspectionDictionaryUnlinkObjectParameterRequest
///
/// Properties:
/// * [inspectionObjectCode]
/// * [inspectionParameterCode]
@BuiltValue()
abstract class InspectionDictionaryUnlinkObjectParameterRequest
    implements
        Built<
          InspectionDictionaryUnlinkObjectParameterRequest,
          InspectionDictionaryUnlinkObjectParameterRequestBuilder
        > {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  InspectionDictionaryUnlinkObjectParameterRequest._();

  factory InspectionDictionaryUnlinkObjectParameterRequest([
    void updates(InspectionDictionaryUnlinkObjectParameterRequestBuilder b),
  ]) = _$InspectionDictionaryUnlinkObjectParameterRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    InspectionDictionaryUnlinkObjectParameterRequestBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InspectionDictionaryUnlinkObjectParameterRequest>
  get serializer =>
      _$InspectionDictionaryUnlinkObjectParameterRequestSerializer();
}

class _$InspectionDictionaryUnlinkObjectParameterRequestSerializer
    implements
        PrimitiveSerializer<InspectionDictionaryUnlinkObjectParameterRequest> {
  @override
  final Iterable<Type> types = const [
    InspectionDictionaryUnlinkObjectParameterRequest,
    _$InspectionDictionaryUnlinkObjectParameterRequest,
  ];

  @override
  final String wireName = r'InspectionDictionaryUnlinkObjectParameterRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InspectionDictionaryUnlinkObjectParameterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inspectionObjectCode';
    yield serializers.serialize(
      object.inspectionObjectCode,
      specifiedType: const FullType(String),
    );
    yield r'inspectionParameterCode';
    yield serializers.serialize(
      object.inspectionParameterCode,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InspectionDictionaryUnlinkObjectParameterRequest object, {
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
    required InspectionDictionaryUnlinkObjectParameterRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inspectionObjectCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionObjectCode = valueDes;
          break;
        case r'inspectionParameterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionParameterCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InspectionDictionaryUnlinkObjectParameterRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InspectionDictionaryUnlinkObjectParameterRequestBuilder();
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
