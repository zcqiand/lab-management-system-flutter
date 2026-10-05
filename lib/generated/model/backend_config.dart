//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/backend_features.dart';
import 'package:lab_management_system_flutter/generated/model/backend_id.dart';
import 'package:lab_management_system_flutter/generated/model/auth_header_kind.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backend_config.g.dart';

/// 已废弃 (ADR-0014):用 VITE_API_BASE_URL / NEXT_PUBLIC_API_BASE_URL 替代;4-backend 运行时切换配置
///
/// Properties:
/// * [id] - 槽位标识,必须是 BackendId 之一
/// * [label] - 显示名(MSW Mock / Next.js API / Spring Boot / ASP.NET Core)
/// * [baseUrl] - baseUrl 的展示值,例如 'http://localhost:5201/api'
/// * [authHeader] - token 头:Bearer 走 Authorization,部分老后端用 X-Auth-Token
/// * [ssoCallbackPath] - SSO 回调路径(仅启用 SSO 的后端填写)
/// * [features] - 能力矩阵
@BuiltValue()
abstract class BackendConfig
    implements Built<BackendConfig, BackendConfigBuilder> {
  /// 槽位标识,必须是 BackendId 之一
  @BuiltValueField(wireName: r'id')
  BackendId get id;
  // enum idEnum {  nextjs,  springboot,  aspnetcore,  };

  /// 显示名(MSW Mock / Next.js API / Spring Boot / ASP.NET Core)
  @BuiltValueField(wireName: r'label')
  String get label;

  /// baseUrl 的展示值,例如 'http://localhost:5201/api'
  @BuiltValueField(wireName: r'baseUrl')
  String get baseUrl;

  /// token 头:Bearer 走 Authorization,部分老后端用 X-Auth-Token
  @BuiltValueField(wireName: r'authHeader')
  AuthHeaderKind get authHeader;
  // enum authHeaderEnum {  Authorization,  X-Auth-Token,  };

  /// SSO 回调路径(仅启用 SSO 的后端填写)
  @BuiltValueField(wireName: r'ssoCallbackPath')
  String? get ssoCallbackPath;

  /// 能力矩阵
  @BuiltValueField(wireName: r'features')
  BackendFeatures get features;

  BackendConfig._();

  factory BackendConfig([void updates(BackendConfigBuilder b)]) =
      _$BackendConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackendConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackendConfig> get serializer =>
      _$BackendConfigSerializer();
}

class _$BackendConfigSerializer implements PrimitiveSerializer<BackendConfig> {
  @override
  final Iterable<Type> types = const [BackendConfig, _$BackendConfig];

  @override
  final String wireName = r'BackendConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackendConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(BackendId),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'baseUrl';
    yield serializers.serialize(
      object.baseUrl,
      specifiedType: const FullType(String),
    );
    yield r'authHeader';
    yield serializers.serialize(
      object.authHeader,
      specifiedType: const FullType(AuthHeaderKind),
    );
    if (object.ssoCallbackPath != null) {
      yield r'ssoCallbackPath';
      yield serializers.serialize(
        object.ssoCallbackPath,
        specifiedType: const FullType(String),
      );
    }
    yield r'features';
    yield serializers.serialize(
      object.features,
      specifiedType: const FullType(BackendFeatures),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BackendConfig object, {
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
    required BackendConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BackendId),
          ) as BackendId;
          result.id = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'baseUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseUrl = valueDes;
          break;
        case r'authHeader':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthHeaderKind),
          ) as AuthHeaderKind;
          result.authHeader = valueDes;
          break;
        case r'ssoCallbackPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ssoCallbackPath = valueDes;
          break;
        case r'features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BackendFeatures),
          ) as BackendFeatures;
          result.features.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackendConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackendConfigBuilder();
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
