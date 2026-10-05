//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/inspection_standard_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_inspection_standard_request.g.dart';

/// UpdateInspectionStandardRequest
///
/// Properties:
/// * [name]
/// * [version]
/// * [status]
/// * [sourceDocumentId]
/// * [sourceHash]
/// * [sortOrder]
@BuiltValue()
abstract class UpdateInspectionStandardRequest
    implements
        Built<
          UpdateInspectionStandardRequest,
          UpdateInspectionStandardRequestBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'status')
  InspectionStandardStatus? get status;
  // enum statusEnum {  active,  superseded,  draft,  };

  @BuiltValueField(wireName: r'sourceDocumentId')
  String? get sourceDocumentId;

  @BuiltValueField(wireName: r'sourceHash')
  String? get sourceHash;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  UpdateInspectionStandardRequest._();

  factory UpdateInspectionStandardRequest([
    void updates(UpdateInspectionStandardRequestBuilder b),
  ]) = _$UpdateInspectionStandardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateInspectionStandardRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateInspectionStandardRequest> get serializer =>
      _$UpdateInspectionStandardRequestSerializer();
}

class _$UpdateInspectionStandardRequestSerializer
    implements PrimitiveSerializer<UpdateInspectionStandardRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateInspectionStandardRequest,
    _$UpdateInspectionStandardRequest,
  ];

  @override
  final String wireName = r'UpdateInspectionStandardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateInspectionStandardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(InspectionStandardStatus),
      );
    }
    if (object.sourceDocumentId != null) {
      yield r'sourceDocumentId';
      yield serializers.serialize(
        object.sourceDocumentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceHash != null) {
      yield r'sourceHash';
      yield serializers.serialize(
        object.sourceHash,
        specifiedType: const FullType(String),
      );
    }
    if (object.sortOrder != null) {
      yield r'sortOrder';
      yield serializers.serialize(
        object.sortOrder,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateInspectionStandardRequest object, {
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
    required UpdateInspectionStandardRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(InspectionStandardStatus),
          ) as InspectionStandardStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'sourceDocumentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceDocumentId = valueDes;
          break;
        case r'sourceHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceHash = valueDes;
          break;
        case r'sortOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sortOrder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateInspectionStandardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateInspectionStandardRequestBuilder();
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
