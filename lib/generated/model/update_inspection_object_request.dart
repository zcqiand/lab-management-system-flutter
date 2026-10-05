//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_inspection_object_request.g.dart';

/// UpdateInspectionObjectRequest
///
/// Properties:
/// * [inspectionSpecialtyCode]
/// * [sourceProjectNo]
/// * [sourceProjectName]
/// * [name]
/// * [isOptionalForQualification]
/// * [isOfficial]
/// * [enabled]
/// * [sortOrder]
@BuiltValue()
abstract class UpdateInspectionObjectRequest
    implements
        Built<
          UpdateInspectionObjectRequest,
          UpdateInspectionObjectRequestBuilder
        > {
  @BuiltValueField(wireName: r'inspectionSpecialtyCode')
  String? get inspectionSpecialtyCode;

  @BuiltValueField(wireName: r'sourceProjectNo')
  String? get sourceProjectNo;

  @BuiltValueField(wireName: r'sourceProjectName')
  String? get sourceProjectName;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'isOptionalForQualification')
  bool? get isOptionalForQualification;

  @BuiltValueField(wireName: r'isOfficial')
  bool? get isOfficial;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  UpdateInspectionObjectRequest._();

  factory UpdateInspectionObjectRequest([
    void updates(UpdateInspectionObjectRequestBuilder b),
  ]) = _$UpdateInspectionObjectRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateInspectionObjectRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateInspectionObjectRequest> get serializer =>
      _$UpdateInspectionObjectRequestSerializer();
}

class _$UpdateInspectionObjectRequestSerializer
    implements PrimitiveSerializer<UpdateInspectionObjectRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateInspectionObjectRequest,
    _$UpdateInspectionObjectRequest,
  ];

  @override
  final String wireName = r'UpdateInspectionObjectRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateInspectionObjectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.inspectionSpecialtyCode != null) {
      yield r'inspectionSpecialtyCode';
      yield serializers.serialize(
        object.inspectionSpecialtyCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceProjectNo != null) {
      yield r'sourceProjectNo';
      yield serializers.serialize(
        object.sourceProjectNo,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceProjectName != null) {
      yield r'sourceProjectName';
      yield serializers.serialize(
        object.sourceProjectName,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
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
    UpdateInspectionObjectRequest object, {
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
    required UpdateInspectionObjectRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inspectionSpecialtyCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectionSpecialtyCode = valueDes;
          break;
        case r'sourceProjectNo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceProjectNo = valueDes;
          break;
        case r'sourceProjectName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceProjectName = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  UpdateInspectionObjectRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateInspectionObjectRequestBuilder();
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
