//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/material_qualified_rate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_stats_qualified_rate_by_material.g.dart';

/// DashboardStatsQualifiedRateByMaterial
///
/// Properties:
/// * [concrete]
/// * [rebar]
/// * [sand]
@BuiltValue()
abstract class DashboardStatsQualifiedRateByMaterial
    implements
        Built<
          DashboardStatsQualifiedRateByMaterial,
          DashboardStatsQualifiedRateByMaterialBuilder
        > {
  @BuiltValueField(wireName: r'concrete')
  MaterialQualifiedRate get concrete;

  @BuiltValueField(wireName: r'rebar')
  MaterialQualifiedRate get rebar;

  @BuiltValueField(wireName: r'sand')
  MaterialQualifiedRate get sand;

  DashboardStatsQualifiedRateByMaterial._();

  factory DashboardStatsQualifiedRateByMaterial([
    void updates(DashboardStatsQualifiedRateByMaterialBuilder b),
  ]) = _$DashboardStatsQualifiedRateByMaterial;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStatsQualifiedRateByMaterialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStatsQualifiedRateByMaterial> get serializer =>
      _$DashboardStatsQualifiedRateByMaterialSerializer();
}

class _$DashboardStatsQualifiedRateByMaterialSerializer
    implements PrimitiveSerializer<DashboardStatsQualifiedRateByMaterial> {
  @override
  final Iterable<Type> types = const [
    DashboardStatsQualifiedRateByMaterial,
    _$DashboardStatsQualifiedRateByMaterial,
  ];

  @override
  final String wireName = r'DashboardStatsQualifiedRateByMaterial';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStatsQualifiedRateByMaterial object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'concrete';
    yield serializers.serialize(
      object.concrete,
      specifiedType: const FullType(MaterialQualifiedRate),
    );
    yield r'rebar';
    yield serializers.serialize(
      object.rebar,
      specifiedType: const FullType(MaterialQualifiedRate),
    );
    yield r'sand';
    yield serializers.serialize(
      object.sand,
      specifiedType: const FullType(MaterialQualifiedRate),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardStatsQualifiedRateByMaterial object, {
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
    required DashboardStatsQualifiedRateByMaterialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'concrete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MaterialQualifiedRate),
          ) as MaterialQualifiedRate;
          result.concrete.replace(valueDes);
          break;
        case r'rebar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MaterialQualifiedRate),
          ) as MaterialQualifiedRate;
          result.rebar.replace(valueDes);
          break;
        case r'sand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MaterialQualifiedRate),
          ) as MaterialQualifiedRate;
          result.sand.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardStatsQualifiedRateByMaterial deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStatsQualifiedRateByMaterialBuilder();
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
