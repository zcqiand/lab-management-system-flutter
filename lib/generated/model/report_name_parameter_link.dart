//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_name_parameter_link.g.dart';

/// ReportNameParameterLink
///
/// Properties:
/// * [reportNameCode]
/// * [inspectionParameterCode]
/// * [remark]
@BuiltValue()
abstract class ReportNameParameterLink
    implements Built<ReportNameParameterLink, ReportNameParameterLinkBuilder> {
  @BuiltValueField(wireName: r'reportNameCode')
  String get reportNameCode;

  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  ReportNameParameterLink._();

  factory ReportNameParameterLink([
    void updates(ReportNameParameterLinkBuilder b),
  ]) = _$ReportNameParameterLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportNameParameterLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportNameParameterLink> get serializer =>
      _$ReportNameParameterLinkSerializer();
}

class _$ReportNameParameterLinkSerializer
    implements PrimitiveSerializer<ReportNameParameterLink> {
  @override
  final Iterable<Type> types = const [
    ReportNameParameterLink,
    _$ReportNameParameterLink,
  ];

  @override
  final String wireName = r'ReportNameParameterLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportNameParameterLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reportNameCode';
    yield serializers.serialize(
      object.reportNameCode,
      specifiedType: const FullType(String),
    );
    yield r'inspectionParameterCode';
    yield serializers.serialize(
      object.inspectionParameterCode,
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
    ReportNameParameterLink object, {
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
    required ReportNameParameterLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reportNameCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportNameCode = valueDes;
          break;
        case r'inspectionParameterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionParameterCode = valueDes;
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
  ReportNameParameterLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportNameParameterLinkBuilder();
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
