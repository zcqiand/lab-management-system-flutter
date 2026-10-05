//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_names_unlink_report_name_parameter_request.g.dart';

/// ReportNamesUnlinkReportNameParameterRequest
///
/// Properties:
/// * [reportNameCode]
/// * [inspectionParameterCode]
@BuiltValue()
abstract class ReportNamesUnlinkReportNameParameterRequest
    implements
        Built<
          ReportNamesUnlinkReportNameParameterRequest,
          ReportNamesUnlinkReportNameParameterRequestBuilder
        > {
  @BuiltValueField(wireName: r'reportNameCode')
  String get reportNameCode;

  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  ReportNamesUnlinkReportNameParameterRequest._();

  factory ReportNamesUnlinkReportNameParameterRequest([
    void updates(ReportNamesUnlinkReportNameParameterRequestBuilder b),
  ]) = _$ReportNamesUnlinkReportNameParameterRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportNamesUnlinkReportNameParameterRequestBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportNamesUnlinkReportNameParameterRequest>
  get serializer => _$ReportNamesUnlinkReportNameParameterRequestSerializer();
}

class _$ReportNamesUnlinkReportNameParameterRequestSerializer
    implements
        PrimitiveSerializer<ReportNamesUnlinkReportNameParameterRequest> {
  @override
  final Iterable<Type> types = const [
    ReportNamesUnlinkReportNameParameterRequest,
    _$ReportNamesUnlinkReportNameParameterRequest,
  ];

  @override
  final String wireName = r'ReportNamesUnlinkReportNameParameterRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportNamesUnlinkReportNameParameterRequest object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportNamesUnlinkReportNameParameterRequest object, {
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
    required ReportNamesUnlinkReportNameParameterRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportNamesUnlinkReportNameParameterRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportNamesUnlinkReportNameParameterRequestBuilder();
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
