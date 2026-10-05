//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/inspection_standard_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inspection_dictionary_unlink_object_standard_request.g.dart';

/// InspectionDictionaryUnlinkObjectStandardRequest
///
/// Properties:
/// * [inspectionObjectCode]
/// * [inspectionStandardCode]
/// * [role]
@BuiltValue()
abstract class InspectionDictionaryUnlinkObjectStandardRequest
    implements
        Built<
          InspectionDictionaryUnlinkObjectStandardRequest,
          InspectionDictionaryUnlinkObjectStandardRequestBuilder
        > {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'inspectionStandardCode')
  String get inspectionStandardCode;

  @BuiltValueField(wireName: r'role')
  InspectionStandardRole get role;
  // enum roleEnum {  TESTING,  JUDGMENT,  };

  InspectionDictionaryUnlinkObjectStandardRequest._();

  factory InspectionDictionaryUnlinkObjectStandardRequest([
    void updates(InspectionDictionaryUnlinkObjectStandardRequestBuilder b),
  ]) = _$InspectionDictionaryUnlinkObjectStandardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    InspectionDictionaryUnlinkObjectStandardRequestBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InspectionDictionaryUnlinkObjectStandardRequest>
  get serializer =>
      _$InspectionDictionaryUnlinkObjectStandardRequestSerializer();
}

class _$InspectionDictionaryUnlinkObjectStandardRequestSerializer
    implements
        PrimitiveSerializer<InspectionDictionaryUnlinkObjectStandardRequest> {
  @override
  final Iterable<Type> types = const [
    InspectionDictionaryUnlinkObjectStandardRequest,
    _$InspectionDictionaryUnlinkObjectStandardRequest,
  ];

  @override
  final String wireName = r'InspectionDictionaryUnlinkObjectStandardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InspectionDictionaryUnlinkObjectStandardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inspectionObjectCode';
    yield serializers.serialize(
      object.inspectionObjectCode,
      specifiedType: const FullType(String),
    );
    yield r'inspectionStandardCode';
    yield serializers.serialize(
      object.inspectionStandardCode,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(InspectionStandardRole),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InspectionDictionaryUnlinkObjectStandardRequest object, {
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
    required InspectionDictionaryUnlinkObjectStandardRequestBuilder result,
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
        case r'inspectionStandardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionStandardCode = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InspectionStandardRole),
          ) as InspectionStandardRole;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InspectionDictionaryUnlinkObjectStandardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InspectionDictionaryUnlinkObjectStandardRequestBuilder();
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
