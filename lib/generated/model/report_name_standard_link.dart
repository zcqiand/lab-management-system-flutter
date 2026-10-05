//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/inspection_standard_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_name_standard_link.g.dart';

/// ReportNameStandardLink
///
/// Properties:
/// * [reportNameCode]
/// * [inspectionStandardCode]
/// * [role]
/// * [remark]
@BuiltValue()
abstract class ReportNameStandardLink
    implements Built<ReportNameStandardLink, ReportNameStandardLinkBuilder> {
  @BuiltValueField(wireName: r'reportNameCode')
  String get reportNameCode;

  @BuiltValueField(wireName: r'inspectionStandardCode')
  String get inspectionStandardCode;

  @BuiltValueField(wireName: r'role')
  InspectionStandardRole get role;
  // enum roleEnum {  TESTING,  JUDGMENT,  };

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  ReportNameStandardLink._();

  factory ReportNameStandardLink([
    void updates(ReportNameStandardLinkBuilder b),
  ]) = _$ReportNameStandardLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportNameStandardLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportNameStandardLink> get serializer =>
      _$ReportNameStandardLinkSerializer();
}

class _$ReportNameStandardLinkSerializer
    implements PrimitiveSerializer<ReportNameStandardLink> {
  @override
  final Iterable<Type> types = const [
    ReportNameStandardLink,
    _$ReportNameStandardLink,
  ];

  @override
  final String wireName = r'ReportNameStandardLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportNameStandardLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reportNameCode';
    yield serializers.serialize(
      object.reportNameCode,
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
    ReportNameStandardLink object, {
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
    required ReportNameStandardLinkBuilder result,
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
  ReportNameStandardLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportNameStandardLinkBuilder();
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
