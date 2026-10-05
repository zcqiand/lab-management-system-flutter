//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inspection_object.g.dart';

/// InspectionObject
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
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class InspectionObject
    implements Built<InspectionObject, InspectionObjectBuilder> {
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
  bool get isOptionalForQualification;

  @BuiltValueField(wireName: r'isOfficial')
  bool get isOfficial;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'sortOrder')
  int get sortOrder;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  InspectionObject._();

  factory InspectionObject([void updates(InspectionObjectBuilder b)]) =
      _$InspectionObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InspectionObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InspectionObject> get serializer =>
      _$InspectionObjectSerializer();
}

class _$InspectionObjectSerializer
    implements PrimitiveSerializer<InspectionObject> {
  @override
  final Iterable<Type> types = const [InspectionObject, _$InspectionObject];

  @override
  final String wireName = r'InspectionObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InspectionObject object, {
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
    yield r'isOptionalForQualification';
    yield serializers.serialize(
      object.isOptionalForQualification,
      specifiedType: const FullType(bool),
    );
    yield r'isOfficial';
    yield serializers.serialize(
      object.isOfficial,
      specifiedType: const FullType(bool),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'sortOrder';
    yield serializers.serialize(
      object.sortOrder,
      specifiedType: const FullType(int),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InspectionObject object, {
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
    required InspectionObjectBuilder result,
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
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOptionalForQualification = valueDes;
          break;
        case r'isOfficial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOfficial = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'sortOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sortOrder = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InspectionObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InspectionObjectBuilder();
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
