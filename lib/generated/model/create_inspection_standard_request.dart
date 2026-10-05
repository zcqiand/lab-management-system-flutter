//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/inspection_standard_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_inspection_standard_request.g.dart';

/// CreateInspectionStandardRequest
///
/// Properties:
/// * [code]
/// * [name]
/// * [version]
/// * [status]
/// * [sourceDocumentId]
/// * [sourceHash]
/// * [sortOrder]
@BuiltValue()
abstract class CreateInspectionStandardRequest
    implements
        Built<
          CreateInspectionStandardRequest,
          CreateInspectionStandardRequestBuilder
        > {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'name')
  String get name;

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

  CreateInspectionStandardRequest._();

  factory CreateInspectionStandardRequest([
    void updates(CreateInspectionStandardRequestBuilder b),
  ]) = _$CreateInspectionStandardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInspectionStandardRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInspectionStandardRequest> get serializer =>
      _$CreateInspectionStandardRequestSerializer();
}

class _$CreateInspectionStandardRequestSerializer
    implements PrimitiveSerializer<CreateInspectionStandardRequest> {
  @override
  final Iterable<Type> types = const [
    CreateInspectionStandardRequest,
    _$CreateInspectionStandardRequest,
  ];

  @override
  final String wireName = r'CreateInspectionStandardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInspectionStandardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    CreateInspectionStandardRequest object, {
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
    required CreateInspectionStandardRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  CreateInspectionStandardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInspectionStandardRequestBuilder();
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
