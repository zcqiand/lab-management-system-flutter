//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'specialty_object_link.g.dart';

/// SpecialtyObjectLink
///
/// Properties:
/// * [inspectionSpecialtyCode]
/// * [inspectionObjectCode]
/// * [remark]
@BuiltValue()
abstract class SpecialtyObjectLink
    implements Built<SpecialtyObjectLink, SpecialtyObjectLinkBuilder> {
  @BuiltValueField(wireName: r'inspectionSpecialtyCode')
  String get inspectionSpecialtyCode;

  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  SpecialtyObjectLink._();

  factory SpecialtyObjectLink([void updates(SpecialtyObjectLinkBuilder b)]) =
      _$SpecialtyObjectLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialtyObjectLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialtyObjectLink> get serializer =>
      _$SpecialtyObjectLinkSerializer();
}

class _$SpecialtyObjectLinkSerializer
    implements PrimitiveSerializer<SpecialtyObjectLink> {
  @override
  final Iterable<Type> types = const [
    SpecialtyObjectLink,
    _$SpecialtyObjectLink,
  ];

  @override
  final String wireName = r'SpecialtyObjectLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialtyObjectLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inspectionSpecialtyCode';
    yield serializers.serialize(
      object.inspectionSpecialtyCode,
      specifiedType: const FullType(String),
    );
    yield r'inspectionObjectCode';
    yield serializers.serialize(
      object.inspectionObjectCode,
      specifiedType: const FullType(String),
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
    SpecialtyObjectLink object, {
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
    required SpecialtyObjectLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inspectionSpecialtyCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionSpecialtyCode = valueDes;
          break;
        case r'inspectionObjectCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionObjectCode = valueDes;
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
  SpecialtyObjectLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialtyObjectLinkBuilder();
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
