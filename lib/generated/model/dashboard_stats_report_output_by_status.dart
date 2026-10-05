//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_stats_report_output_by_status.g.dart';

/// DashboardStatsReportOutputByStatus
///
/// Properties:
/// * [generated]
/// * [pending]
/// * [issued]
@BuiltValue()
abstract class DashboardStatsReportOutputByStatus
    implements
        Built<
          DashboardStatsReportOutputByStatus,
          DashboardStatsReportOutputByStatusBuilder
        > {
  @BuiltValueField(wireName: r'generated')
  int get generated;

  @BuiltValueField(wireName: r'pending')
  int get pending;

  @BuiltValueField(wireName: r'issued')
  int get issued;

  DashboardStatsReportOutputByStatus._();

  factory DashboardStatsReportOutputByStatus([
    void updates(DashboardStatsReportOutputByStatusBuilder b),
  ]) = _$DashboardStatsReportOutputByStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStatsReportOutputByStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStatsReportOutputByStatus> get serializer =>
      _$DashboardStatsReportOutputByStatusSerializer();
}

class _$DashboardStatsReportOutputByStatusSerializer
    implements PrimitiveSerializer<DashboardStatsReportOutputByStatus> {
  @override
  final Iterable<Type> types = const [
    DashboardStatsReportOutputByStatus,
    _$DashboardStatsReportOutputByStatus,
  ];

  @override
  final String wireName = r'DashboardStatsReportOutputByStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStatsReportOutputByStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'generated';
    yield serializers.serialize(
      object.generated,
      specifiedType: const FullType(int),
    );
    yield r'pending';
    yield serializers.serialize(
      object.pending,
      specifiedType: const FullType(int),
    );
    yield r'issued';
    yield serializers.serialize(
      object.issued,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardStatsReportOutputByStatus object, {
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
    required DashboardStatsReportOutputByStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'generated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.generated = valueDes;
          break;
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pending = valueDes;
          break;
        case r'issued':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.issued = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardStatsReportOutputByStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStatsReportOutputByStatusBuilder();
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
