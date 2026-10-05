//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/dashboard_stats_report_count_by_status.dart';
import 'package:lab_management_system_flutter/generated/model/dashboard_stats_report_output_by_status.dart';
import 'package:lab_management_system_flutter/generated/model/dashboard_stats_qualified_rate_by_material.dart';
import 'package:lab_management_system_flutter/generated/model/dashboard_stats_funnel_by_stage.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_stats.g.dart';

/// DashboardStats
///
/// Properties:
/// * [contractCount]
/// * [receiptCount]
/// * [sampleCount]
/// * [reportCountByStatus]
/// * [pendingTaskCount]
/// * [todayTestCount]
/// * [qualifiedRateByMaterial]
/// * [reportOutputByStatus]
/// * [funnelByStage]
@BuiltValue()
abstract class DashboardStats
    implements Built<DashboardStats, DashboardStatsBuilder> {
  @BuiltValueField(wireName: r'contractCount')
  int get contractCount;

  @BuiltValueField(wireName: r'receiptCount')
  int get receiptCount;

  @BuiltValueField(wireName: r'sampleCount')
  int get sampleCount;

  @BuiltValueField(wireName: r'reportCountByStatus')
  DashboardStatsReportCountByStatus get reportCountByStatus;

  @BuiltValueField(wireName: r'pendingTaskCount')
  int get pendingTaskCount;

  @BuiltValueField(wireName: r'todayTestCount')
  int get todayTestCount;

  @BuiltValueField(wireName: r'qualifiedRateByMaterial')
  DashboardStatsQualifiedRateByMaterial get qualifiedRateByMaterial;

  @BuiltValueField(wireName: r'reportOutputByStatus')
  DashboardStatsReportOutputByStatus get reportOutputByStatus;

  @BuiltValueField(wireName: r'funnelByStage')
  DashboardStatsFunnelByStage get funnelByStage;

  DashboardStats._();

  factory DashboardStats([void updates(DashboardStatsBuilder b)]) =
      _$DashboardStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStats> get serializer =>
      _$DashboardStatsSerializer();
}

class _$DashboardStatsSerializer
    implements PrimitiveSerializer<DashboardStats> {
  @override
  final Iterable<Type> types = const [DashboardStats, _$DashboardStats];

  @override
  final String wireName = r'DashboardStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contractCount';
    yield serializers.serialize(
      object.contractCount,
      specifiedType: const FullType(int),
    );
    yield r'receiptCount';
    yield serializers.serialize(
      object.receiptCount,
      specifiedType: const FullType(int),
    );
    yield r'sampleCount';
    yield serializers.serialize(
      object.sampleCount,
      specifiedType: const FullType(int),
    );
    yield r'reportCountByStatus';
    yield serializers.serialize(
      object.reportCountByStatus,
      specifiedType: const FullType(DashboardStatsReportCountByStatus),
    );
    yield r'pendingTaskCount';
    yield serializers.serialize(
      object.pendingTaskCount,
      specifiedType: const FullType(int),
    );
    yield r'todayTestCount';
    yield serializers.serialize(
      object.todayTestCount,
      specifiedType: const FullType(int),
    );
    yield r'qualifiedRateByMaterial';
    yield serializers.serialize(
      object.qualifiedRateByMaterial,
      specifiedType: const FullType(DashboardStatsQualifiedRateByMaterial),
    );
    yield r'reportOutputByStatus';
    yield serializers.serialize(
      object.reportOutputByStatus,
      specifiedType: const FullType(DashboardStatsReportOutputByStatus),
    );
    yield r'funnelByStage';
    yield serializers.serialize(
      object.funnelByStage,
      specifiedType: const FullType(DashboardStatsFunnelByStage),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardStats object, {
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
    required DashboardStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contractCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.contractCount = valueDes;
          break;
        case r'receiptCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.receiptCount = valueDes;
          break;
        case r'sampleCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sampleCount = valueDes;
          break;
        case r'reportCountByStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DashboardStatsReportCountByStatus),
          ) as DashboardStatsReportCountByStatus;
          result.reportCountByStatus.replace(valueDes);
          break;
        case r'pendingTaskCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pendingTaskCount = valueDes;
          break;
        case r'todayTestCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.todayTestCount = valueDes;
          break;
        case r'qualifiedRateByMaterial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
              DashboardStatsQualifiedRateByMaterial,
            ),
          ) as DashboardStatsQualifiedRateByMaterial;
          result.qualifiedRateByMaterial.replace(valueDes);
          break;
        case r'reportOutputByStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DashboardStatsReportOutputByStatus),
          ) as DashboardStatsReportOutputByStatus;
          result.reportOutputByStatus.replace(valueDes);
          break;
        case r'funnelByStage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DashboardStatsFunnelByStage),
          ) as DashboardStatsFunnelByStage;
          result.funnelByStage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStatsBuilder();
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
