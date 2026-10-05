//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/inspection_standard_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_standard_link.g.dart';

/// ObjectStandardLink
///
/// Properties:
/// * [inspectionObjectCode]
/// * [inspectionStandardCode]
/// * [role]
/// * [remark]
@BuiltValue()
abstract class ObjectStandardLink
    implements Built<ObjectStandardLink, ObjectStandardLinkBuilder> {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'inspectionStandardCode')
  String get inspectionStandardCode;

  @BuiltValueField(wireName: r'role')
  InspectionStandardRole get role;
  // enum roleEnum {  TESTING,  JUDGMENT,  };

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  ObjectStandardLink._();

  factory ObjectStandardLink([void updates(ObjectStandardLinkBuilder b)]) =
      _$ObjectStandardLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectStandardLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectStandardLink> get serializer =>
      _$ObjectStandardLinkSerializer();
}

class _$ObjectStandardLinkSerializer
    implements PrimitiveSerializer<ObjectStandardLink> {
  @override
  final Iterable<Type> types = const [ObjectStandardLink, _$ObjectStandardLink];

  @override
  final String wireName = r'ObjectStandardLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectStandardLink object, {
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
    if (object.remark != null) {
      yield r'remark';
      yield serializers.serialize(
        object.remark,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectStandardLink object, {
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
    required ObjectStandardLinkBuilder result,
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
        case r'remark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remark = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectStandardLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectStandardLinkBuilder();
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
