//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_names_unlink_object_report_name_request.g.dart';

/// ReportNamesUnlinkObjectReportNameRequest
///
/// Properties:
/// * [inspectionObjectCode]
/// * [reportNameCode]
@BuiltValue()
abstract class ReportNamesUnlinkObjectReportNameRequest
    implements
        Built<
          ReportNamesUnlinkObjectReportNameRequest,
          ReportNamesUnlinkObjectReportNameRequestBuilder
        > {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'reportNameCode')
  String get reportNameCode;

  ReportNamesUnlinkObjectReportNameRequest._();

  factory ReportNamesUnlinkObjectReportNameRequest([
    void updates(ReportNamesUnlinkObjectReportNameRequestBuilder b),
  ]) = _$ReportNamesUnlinkObjectReportNameRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportNamesUnlinkObjectReportNameRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportNamesUnlinkObjectReportNameRequest> get serializer =>
      _$ReportNamesUnlinkObjectReportNameRequestSerializer();
}

class _$ReportNamesUnlinkObjectReportNameRequestSerializer
    implements PrimitiveSerializer<ReportNamesUnlinkObjectReportNameRequest> {
  @override
  final Iterable<Type> types = const [
    ReportNamesUnlinkObjectReportNameRequest,
    _$ReportNamesUnlinkObjectReportNameRequest,
  ];

  @override
  final String wireName = r'ReportNamesUnlinkObjectReportNameRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportNamesUnlinkObjectReportNameRequest object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportNamesUnlinkObjectReportNameRequest object, {
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
    required ReportNamesUnlinkObjectReportNameRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportNamesUnlinkObjectReportNameRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportNamesUnlinkObjectReportNameRequestBuilder();
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
