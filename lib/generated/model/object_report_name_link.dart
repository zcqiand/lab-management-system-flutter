//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_report_name_link.g.dart';

/// ObjectReportNameLink
///
/// Properties:
/// * [inspectionObjectCode]
/// * [reportNameCode]
/// * [remark]
@BuiltValue()
abstract class ObjectReportNameLink
    implements Built<ObjectReportNameLink, ObjectReportNameLinkBuilder> {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'reportNameCode')
  String get reportNameCode;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  ObjectReportNameLink._();

  factory ObjectReportNameLink([void updates(ObjectReportNameLinkBuilder b)]) =
      _$ObjectReportNameLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectReportNameLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectReportNameLink> get serializer =>
      _$ObjectReportNameLinkSerializer();
}

class _$ObjectReportNameLinkSerializer
    implements PrimitiveSerializer<ObjectReportNameLink> {
  @override
  final Iterable<Type> types = const [
    ObjectReportNameLink,
    _$ObjectReportNameLink,
  ];

  @override
  final String wireName = r'ObjectReportNameLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectReportNameLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inspectionObjectCode';
    yield serializers.serialize(
      object.inspectionObjectCode,
      specifiedType: const FullType(String),
    );
    yield r'reportNameCode';
    yield serializers.serialize(
      object.reportNameCode,
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
    ObjectReportNameLink object, {
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
    required ObjectReportNameLinkBuilder result,
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
        case r'reportNameCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportNameCode = valueDes;
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
  ObjectReportNameLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectReportNameLinkBuilder();
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
