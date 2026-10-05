//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/my_tenant.dart';
import 'package:lab_management_system_flutter/generated/model/current_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'current_user_session.g.dart';

/// CurrentUserSession
///
/// Properties:
/// * [user]
/// * [tenants]
/// * [currentTenantId]
@BuiltValue()
abstract class CurrentUserSession
    implements Built<CurrentUserSession, CurrentUserSessionBuilder> {
  @BuiltValueField(wireName: r'user')
  CurrentUser get user;

  @BuiltValueField(wireName: r'tenants')
  BuiltList<MyTenant> get tenants;

  @BuiltValueField(wireName: r'currentTenantId')
  String? get currentTenantId;

  CurrentUserSession._();

  factory CurrentUserSession([void updates(CurrentUserSessionBuilder b)]) =
      _$CurrentUserSession;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurrentUserSessionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrentUserSession> get serializer =>
      _$CurrentUserSessionSerializer();
}

class _$CurrentUserSessionSerializer
    implements PrimitiveSerializer<CurrentUserSession> {
  @override
  final Iterable<Type> types = const [CurrentUserSession, _$CurrentUserSession];

  @override
  final String wireName = r'CurrentUserSession';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrentUserSession object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(CurrentUser),
    );
    yield r'tenants';
    yield serializers.serialize(
      object.tenants,
      specifiedType: const FullType(BuiltList, [FullType(MyTenant)]),
    );
    if (object.currentTenantId != null) {
      yield r'currentTenantId';
      yield serializers.serialize(
        object.currentTenantId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CurrentUserSession object, {
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
    required CurrentUserSessionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CurrentUser),
          ) as CurrentUser;
          result.user.replace(valueDes);
          break;
        case r'tenants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MyTenant)]),
          ) as BuiltList<MyTenant>;
          result.tenants.replace(valueDes);
          break;
        case r'currentTenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentTenantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CurrentUserSession deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurrentUserSessionBuilder();
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
