//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/inspection_standard_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_names_unlink_report_name_standard_request.g.dart';

/// ReportNamesUnlinkReportNameStandardRequest
///
/// Properties:
/// * [reportNameCode]
/// * [inspectionStandardCode]
/// * [role]
@BuiltValue()
abstract class ReportNamesUnlinkReportNameStandardRequest
    implements
        Built<
          ReportNamesUnlinkReportNameStandardRequest,
          ReportNamesUnlinkReportNameStandardRequestBuilder
        > {
  @BuiltValueField(wireName: r'reportNameCode')
  String get reportNameCode;

  @BuiltValueField(wireName: r'inspectionStandardCode')
  String get inspectionStandardCode;

  @BuiltValueField(wireName: r'role')
  InspectionStandardRole get role;
  // enum roleEnum {  TESTING,  JUDGMENT,  };

  ReportNamesUnlinkReportNameStandardRequest._();

  factory ReportNamesUnlinkReportNameStandardRequest([
    void updates(ReportNamesUnlinkReportNameStandardRequestBuilder b),
  ]) = _$ReportNamesUnlinkReportNameStandardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportNamesUnlinkReportNameStandardRequestBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportNamesUnlinkReportNameStandardRequest>
  get serializer => _$ReportNamesUnlinkReportNameStandardRequestSerializer();
}

class _$ReportNamesUnlinkReportNameStandardRequestSerializer
    implements PrimitiveSerializer<ReportNamesUnlinkReportNameStandardRequest> {
  @override
  final Iterable<Type> types = const [
    ReportNamesUnlinkReportNameStandardRequest,
    _$ReportNamesUnlinkReportNameStandardRequest,
  ];

  @override
  final String wireName = r'ReportNamesUnlinkReportNameStandardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportNamesUnlinkReportNameStandardRequest object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportNamesUnlinkReportNameStandardRequest object, {
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
    required ReportNamesUnlinkReportNameStandardRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportNamesUnlinkReportNameStandardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportNamesUnlinkReportNameStandardRequestBuilder();
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
