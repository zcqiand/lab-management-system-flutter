//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_stats_report_count_by_status.g.dart';

/// DashboardStatsReportCountByStatus
///
/// Properties:
/// * [draft]
/// * [reviewing]
/// * [issued]
@BuiltValue()
abstract class DashboardStatsReportCountByStatus
    implements
        Built<
          DashboardStatsReportCountByStatus,
          DashboardStatsReportCountByStatusBuilder
        > {
  @BuiltValueField(wireName: r'draft')
  int get draft;

  @BuiltValueField(wireName: r'reviewing')
  int get reviewing;

  @BuiltValueField(wireName: r'issued')
  int get issued;

  DashboardStatsReportCountByStatus._();

  factory DashboardStatsReportCountByStatus([
    void updates(DashboardStatsReportCountByStatusBuilder b),
  ]) = _$DashboardStatsReportCountByStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStatsReportCountByStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStatsReportCountByStatus> get serializer =>
      _$DashboardStatsReportCountByStatusSerializer();
}

class _$DashboardStatsReportCountByStatusSerializer
    implements PrimitiveSerializer<DashboardStatsReportCountByStatus> {
  @override
  final Iterable<Type> types = const [
    DashboardStatsReportCountByStatus,
    _$DashboardStatsReportCountByStatus,
  ];

  @override
  final String wireName = r'DashboardStatsReportCountByStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStatsReportCountByStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'draft';
    yield serializers.serialize(
      object.draft,
      specifiedType: const FullType(int),
    );
    yield r'reviewing';
    yield serializers.serialize(
      object.reviewing,
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
    DashboardStatsReportCountByStatus object, {
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
    required DashboardStatsReportCountByStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'draft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.draft = valueDes;
          break;
        case r'reviewing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.reviewing = valueDes;
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
  DashboardStatsReportCountByStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStatsReportCountByStatusBuilder();
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
