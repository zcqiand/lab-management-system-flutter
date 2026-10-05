//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/auth_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_context.g.dart';

/// AuthContext 数据契约。方法(login/logout/refresh/switchTenant/hasPermission/onChange)由消费方实现,TS 签名见 .state/decision-log.md §2.2
///
/// Properties:
/// * [state] - 当前 auth 状态
@BuiltValue()
abstract class AuthContext implements Built<AuthContext, AuthContextBuilder> {
  /// 当前 auth 状态
  @BuiltValueField(wireName: r'state')
  AuthState get state;

  AuthContext._();

  factory AuthContext([void updates(AuthContextBuilder b)]) = _$AuthContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthContext> get serializer => _$AuthContextSerializer();
}

class _$AuthContextSerializer implements PrimitiveSerializer<AuthContext> {
  @override
  final Iterable<Type> types = const [AuthContext, _$AuthContext];

  @override
  final String wireName = r'AuthContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(AuthState),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthContext object, {
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
    required AuthContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthState),
          ) as AuthState;
          result.state.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthContextBuilder();
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
