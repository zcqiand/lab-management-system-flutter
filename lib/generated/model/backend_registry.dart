//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/backend_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/backend_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backend_registry.g.dart';

/// 已废弃 (ADR-0014);运行时注册表:当前激活 + 可切列表
///
/// Properties:
/// * [active] - 当前激活后端
/// * [available] - 可切换列表(通常包含全部 4 个槽位)
@BuiltValue()
abstract class BackendRegistry
    implements Built<BackendRegistry, BackendRegistryBuilder> {
  /// 当前激活后端
  @BuiltValueField(wireName: r'active')
  BackendId get active;
  // enum activeEnum {  nextjs,  springboot,  aspnetcore,  };

  /// 可切换列表(通常包含全部 4 个槽位)
  @BuiltValueField(wireName: r'available')
  BuiltList<BackendConfig> get available;

  BackendRegistry._();

  factory BackendRegistry([void updates(BackendRegistryBuilder b)]) =
      _$BackendRegistry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackendRegistryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackendRegistry> get serializer =>
      _$BackendRegistrySerializer();
}

class _$BackendRegistrySerializer
    implements PrimitiveSerializer<BackendRegistry> {
  @override
  final Iterable<Type> types = const [BackendRegistry, _$BackendRegistry];

  @override
  final String wireName = r'BackendRegistry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackendRegistry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(BackendId),
    );
    yield r'available';
    yield serializers.serialize(
      object.available,
      specifiedType: const FullType(BuiltList, [FullType(BackendConfig)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BackendRegistry object, {
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
    required BackendRegistryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BackendId),
          ) as BackendId;
          result.active = valueDes;
          break;
        case r'available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BackendConfig)]),
          ) as BuiltList<BackendConfig>;
          result.available.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackendRegistry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackendRegistryBuilder();
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
