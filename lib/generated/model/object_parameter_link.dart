//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/qualification_level.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_parameter_link.g.dart';

/// ObjectParameterLink
///
/// Properties:
/// * [inspectionObjectCode]
/// * [inspectionParameterCode]
/// * [qualificationLevel]
/// * [sourcePage]
/// * [remark]
@BuiltValue()
abstract class ObjectParameterLink
    implements Built<ObjectParameterLink, ObjectParameterLinkBuilder> {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  @BuiltValueField(wireName: r'qualificationLevel')
  QualificationLevel get qualificationLevel;
  // enum qualificationLevelEnum {  QUALIFIED,  RESTRICTED,  };

  @BuiltValueField(wireName: r'sourcePage')
  int? get sourcePage;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  ObjectParameterLink._();

  factory ObjectParameterLink([void updates(ObjectParameterLinkBuilder b)]) =
      _$ObjectParameterLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectParameterLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectParameterLink> get serializer =>
      _$ObjectParameterLinkSerializer();
}

class _$ObjectParameterLinkSerializer
    implements PrimitiveSerializer<ObjectParameterLink> {
  @override
  final Iterable<Type> types = const [
    ObjectParameterLink,
    _$ObjectParameterLink,
  ];

  @override
  final String wireName = r'ObjectParameterLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectParameterLink object, {
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
    yield r'qualificationLevel';
    yield serializers.serialize(
      object.qualificationLevel,
      specifiedType: const FullType(QualificationLevel),
    );
    if (object.sourcePage != null) {
      yield r'sourcePage';
      yield serializers.serialize(
        object.sourcePage,
        specifiedType: const FullType(int),
      );
    }
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
    ObjectParameterLink object, {
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
    required ObjectParameterLinkBuilder result,
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
        case r'qualificationLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualificationLevel),
          ) as QualificationLevel;
          result.qualificationLevel = valueDes;
          break;
        case r'sourcePage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sourcePage = valueDes;
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
  ObjectParameterLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectParameterLinkBuilder();
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
