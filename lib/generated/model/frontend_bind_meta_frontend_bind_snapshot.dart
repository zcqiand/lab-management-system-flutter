//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/auth_context.dart';
import 'package:lab_management_system_flutter/generated/model/backend_registry.dart';
import 'package:lab_management_system_flutter/generated/model/token_storage_keys.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'frontend_bind_meta_frontend_bind_snapshot.g.dart';

/// FrontendBindMetaFrontendBindSnapshot
///
/// Properties:
/// * [registry] - 已废弃 (ADR-0014);保留以维持 BackendRegistry schema 在 openapi.yaml 里的可达性
/// * [authContext]
/// * [tokenKeys]
@BuiltValue()
abstract class FrontendBindMetaFrontendBindSnapshot
    implements
        Built<
          FrontendBindMetaFrontendBindSnapshot,
          FrontendBindMetaFrontendBindSnapshotBuilder
        > {
  /// 已废弃 (ADR-0014);保留以维持 BackendRegistry schema 在 openapi.yaml 里的可达性
  @BuiltValueField(wireName: r'registry')
  BackendRegistry get registry;

  @BuiltValueField(wireName: r'authContext')
  AuthContext get authContext;

  @BuiltValueField(wireName: r'tokenKeys')
  TokenStorageKeys get tokenKeys;

  FrontendBindMetaFrontendBindSnapshot._();

  factory FrontendBindMetaFrontendBindSnapshot([
    void updates(FrontendBindMetaFrontendBindSnapshotBuilder b),
  ]) = _$FrontendBindMetaFrontendBindSnapshot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FrontendBindMetaFrontendBindSnapshotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FrontendBindMetaFrontendBindSnapshot> get serializer =>
      _$FrontendBindMetaFrontendBindSnapshotSerializer();
}

class _$FrontendBindMetaFrontendBindSnapshotSerializer
    implements PrimitiveSerializer<FrontendBindMetaFrontendBindSnapshot> {
  @override
  final Iterable<Type> types = const [
    FrontendBindMetaFrontendBindSnapshot,
    _$FrontendBindMetaFrontendBindSnapshot,
  ];

  @override
  final String wireName = r'FrontendBindMetaFrontendBindSnapshot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FrontendBindMetaFrontendBindSnapshot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'registry';
    yield serializers.serialize(
      object.registry,
      specifiedType: const FullType(BackendRegistry),
    );
    yield r'authContext';
    yield serializers.serialize(
      object.authContext,
      specifiedType: const FullType(AuthContext),
    );
    yield r'tokenKeys';
    yield serializers.serialize(
      object.tokenKeys,
      specifiedType: const FullType(TokenStorageKeys),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FrontendBindMetaFrontendBindSnapshot object, {
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
    required FrontendBindMetaFrontendBindSnapshotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'registry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BackendRegistry),
          ) as BackendRegistry;
          result.registry.replace(valueDes);
          break;
        case r'authContext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthContext),
          ) as AuthContext;
          result.authContext.replace(valueDes);
          break;
        case r'tokenKeys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenStorageKeys),
          ) as TokenStorageKeys;
          result.tokenKeys.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FrontendBindMetaFrontendBindSnapshot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FrontendBindMetaFrontendBindSnapshotBuilder();
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
