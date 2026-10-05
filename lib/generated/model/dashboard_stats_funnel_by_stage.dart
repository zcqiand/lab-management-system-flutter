//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_stats_funnel_by_stage.g.dart';

/// DashboardStatsFunnelByStage
///
/// Properties:
/// * [pendingCollect]
/// * [received]
/// * [testing]
/// * [reporting]
/// * [reviewing]
/// * [issued]
@BuiltValue()
abstract class DashboardStatsFunnelByStage
    implements
        Built<DashboardStatsFunnelByStage, DashboardStatsFunnelByStageBuilder> {
  @BuiltValueField(wireName: r'pending_collect')
  int get pendingCollect;

  @BuiltValueField(wireName: r'received')
  int get received;

  @BuiltValueField(wireName: r'testing')
  int get testing;

  @BuiltValueField(wireName: r'reporting')
  int get reporting;

  @BuiltValueField(wireName: r'reviewing')
  int get reviewing;

  @BuiltValueField(wireName: r'issued')
  int get issued;

  DashboardStatsFunnelByStage._();

  factory DashboardStatsFunnelByStage([
    void updates(DashboardStatsFunnelByStageBuilder b),
  ]) = _$DashboardStatsFunnelByStage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStatsFunnelByStageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStatsFunnelByStage> get serializer =>
      _$DashboardStatsFunnelByStageSerializer();
}

class _$DashboardStatsFunnelByStageSerializer
    implements PrimitiveSerializer<DashboardStatsFunnelByStage> {
  @override
  final Iterable<Type> types = const [
    DashboardStatsFunnelByStage,
    _$DashboardStatsFunnelByStage,
  ];

  @override
  final String wireName = r'DashboardStatsFunnelByStage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStatsFunnelByStage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pending_collect';
    yield serializers.serialize(
      object.pendingCollect,
      specifiedType: const FullType(int),
    );
    yield r'received';
    yield serializers.serialize(
      object.received,
      specifiedType: const FullType(int),
    );
    yield r'testing';
    yield serializers.serialize(
      object.testing,
      specifiedType: const FullType(int),
    );
    yield r'reporting';
    yield serializers.serialize(
      object.reporting,
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
    DashboardStatsFunnelByStage object, {
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
    required DashboardStatsFunnelByStageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pending_collect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pendingCollect = valueDes;
          break;
        case r'received':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.received = valueDes;
          break;
        case r'testing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.testing = valueDes;
          break;
        case r'reporting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.reporting = valueDes;
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
  DashboardStatsFunnelByStage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStatsFunnelByStageBuilder();
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
