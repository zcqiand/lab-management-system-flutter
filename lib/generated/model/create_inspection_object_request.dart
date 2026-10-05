//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_inspection_object_request.g.dart';

/// CreateInspectionObjectRequest
///
/// Properties:
/// * [code]
/// * [inspectionSpecialtyCode]
/// * [sourceProjectNo]
/// * [sourceProjectName]
/// * [name]
/// * [isOptionalForQualification]
/// * [isOfficial]
/// * [enabled]
/// * [sortOrder]
@BuiltValue()
abstract class CreateInspectionObjectRequest
    implements
        Built<
          CreateInspectionObjectRequest,
          CreateInspectionObjectRequestBuilder
        > {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'inspectionSpecialtyCode')
  String get inspectionSpecialtyCode;

  @BuiltValueField(wireName: r'sourceProjectNo')
  String get sourceProjectNo;

  @BuiltValueField(wireName: r'sourceProjectName')
  String get sourceProjectName;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'isOptionalForQualification')
  bool? get isOptionalForQualification;

  @BuiltValueField(wireName: r'isOfficial')
  bool? get isOfficial;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  CreateInspectionObjectRequest._();

  factory CreateInspectionObjectRequest([
    void updates(CreateInspectionObjectRequestBuilder b),
  ]) = _$CreateInspectionObjectRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInspectionObjectRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInspectionObjectRequest> get serializer =>
      _$CreateInspectionObjectRequestSerializer();
}

class _$CreateInspectionObjectRequestSerializer
    implements PrimitiveSerializer<CreateInspectionObjectRequest> {
  @override
  final Iterable<Type> types = const [
    CreateInspectionObjectRequest,
    _$CreateInspectionObjectRequest,
  ];

  @override
  final String wireName = r'CreateInspectionObjectRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInspectionObjectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'inspectionSpecialtyCode';
    yield serializers.serialize(
      object.inspectionSpecialtyCode,
      specifiedType: const FullType(String),
    );
    yield r'sourceProjectNo';
    yield serializers.serialize(
      object.sourceProjectNo,
      specifiedType: const FullType(String),
    );
    yield r'sourceProjectName';
    yield serializers.serialize(
      object.sourceProjectName,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.isOptionalForQualification != null) {
      yield r'isOptionalForQualification';
      yield serializers.serialize(
        object.isOptionalForQualification,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isOfficial != null) {
      yield r'isOfficial';
      yield serializers.serialize(
        object.isOfficial,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
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
    CreateInspectionObjectRequest object, {
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
    required CreateInspectionObjectRequestBuilder result,
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
        case r'inspectionSpecialtyCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionSpecialtyCode = valueDes;
          break;
        case r'sourceProjectNo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceProjectNo = valueDes;
          break;
        case r'sourceProjectName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceProjectName = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'isOptionalForQualification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOptionalForQualification = valueDes;
          break;
        case r'isOfficial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOfficial = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
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
  CreateInspectionObjectRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInspectionObjectRequestBuilder();
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
