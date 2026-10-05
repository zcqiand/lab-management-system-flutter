//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_anonymous.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_awaiting_tenant.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_authenticated.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_idle.dart';
import 'package:lab_management_system_flutter/generated/model/auth_state_authenticated_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'auth_state.g.dart';

/// auth 状态机 4 态。Vue: pinia store / React: Context;两侧实现可同构
///
/// Properties:
/// * [kind]
/// * [value]
@BuiltValue()
abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  /// One Of [AuthStateAnonymous], [AuthStateAuthenticated], [AuthStateAwaitingTenant], [AuthStateIdle]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'kind';

  static const Map<String, Type> discriminatorMapping = {
    r'anonymous': AuthStateAnonymous,
    r'authenticated': AuthStateAuthenticated,
    r'awaiting_tenant': AuthStateAwaitingTenant,
    r'idle': AuthStateIdle,
  };

  AuthState._();

  factory AuthState([void updates(AuthStateBuilder b)]) = _$AuthState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthState> get serializer => _$AuthStateSerializer();
}

extension AuthStateDiscriminatorExt on AuthState {
  String? get discriminatorValue {
    if (this is AuthStateAnonymous) {
      return r'anonymous';
    }
    if (this is AuthStateAuthenticated) {
      return r'authenticated';
    }
    if (this is AuthStateAwaitingTenant) {
      return r'awaiting_tenant';
    }
    if (this is AuthStateIdle) {
      return r'idle';
    }
    return null;
  }
}

extension AuthStateBuilderDiscriminatorExt on AuthStateBuilder {
  String? get discriminatorValue {
    if (this is AuthStateAnonymousBuilder) {
      return r'anonymous';
    }
    if (this is AuthStateAuthenticatedBuilder) {
      return r'authenticated';
    }
    if (this is AuthStateAwaitingTenantBuilder) {
      return r'awaiting_tenant';
    }
    if (this is AuthStateIdleBuilder) {
      return r'idle';
    }
    return null;
  }
}

class _$AuthStateSerializer implements PrimitiveSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];

  @override
  final String wireName = r'AuthState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    AuthState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  AuthState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthStateBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(AuthState.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(
      serializedList[discIndex],
      specifiedType: FullType(String),
    ) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      AuthStateAnonymous,
      AuthStateAuthenticated,
      AuthStateAwaitingTenant,
      AuthStateIdle,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'anonymous':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AuthStateAnonymous),
        ) as AuthStateAnonymous;
        oneOfType = AuthStateAnonymous;
        break;
      case r'authenticated':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AuthStateAuthenticated),
        ) as AuthStateAuthenticated;
        oneOfType = AuthStateAuthenticated;
        break;
      case r'awaiting_tenant':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AuthStateAwaitingTenant),
        ) as AuthStateAwaitingTenant;
        oneOfType = AuthStateAwaitingTenant;
        break;
      case r'idle':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AuthStateIdle),
        ) as AuthStateIdle;
        oneOfType = AuthStateIdle;
        break;
      default:
        throw UnsupportedError(
          "Couldn't deserialize oneOf for the discriminator value: ${discValue}",
        );
    }
    result.oneOf = OneOfDynamic(
      typeIndex: oneOfTypes.indexOf(oneOfType),
      types: oneOfTypes,
      value: oneOfResult,
    );
    return result.build();
  }
}

class AuthStateKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'authenticated')
  static const AuthStateKindEnum authenticated =
      _$authStateKindEnum_authenticated;

  static Serializer<AuthStateKindEnum> get serializer =>
      _$authStateKindEnumSerializer;

  const AuthStateKindEnum._(String name) : super(name);

  static BuiltSet<AuthStateKindEnum> get values => _$authStateKindEnumValues;
  static AuthStateKindEnum valueOf(String name) =>
      _$authStateKindEnumValueOf(name);
}
