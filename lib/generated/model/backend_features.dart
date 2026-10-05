//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backend_features.g.dart';

/// 已废弃 (ADR-0014);后端能力矩阵
///
/// Properties:
/// * [sso] - 是否启用 SSO 跳转(nextjs=true / springboot/aspnetcore 视实现)
/// * [realDb] - 是否对接真实数据库(vs mock seed)
@BuiltValue()
abstract class BackendFeatures
    implements Built<BackendFeatures, BackendFeaturesBuilder> {
  /// 是否启用 SSO 跳转(nextjs=true / springboot/aspnetcore 视实现)
  @BuiltValueField(wireName: r'sso')
  bool get sso;

  /// 是否对接真实数据库(vs mock seed)
  @BuiltValueField(wireName: r'realDb')
  bool get realDb;

  BackendFeatures._();

  factory BackendFeatures([void updates(BackendFeaturesBuilder b)]) =
      _$BackendFeatures;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackendFeaturesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackendFeatures> get serializer =>
      _$BackendFeaturesSerializer();
}

class _$BackendFeaturesSerializer
    implements PrimitiveSerializer<BackendFeatures> {
  @override
  final Iterable<Type> types = const [BackendFeatures, _$BackendFeatures];

  @override
  final String wireName = r'BackendFeatures';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackendFeatures object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sso';
    yield serializers.serialize(
      object.sso,
      specifiedType: const FullType(bool),
    );
    yield r'realDb';
    yield serializers.serialize(
      object.realDb,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BackendFeatures object, {
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
    required BackendFeaturesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sso':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sso = valueDes;
          break;
        case r'realDb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.realDb = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackendFeatures deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackendFeaturesBuilder();
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
