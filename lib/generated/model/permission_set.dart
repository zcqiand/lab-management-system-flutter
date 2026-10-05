//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_set.g.dart';

/// PermissionSet
///
/// Properties:
/// * [permissions]
@BuiltValue()
abstract class PermissionSet
    implements Built<PermissionSet, PermissionSetBuilder> {
  @BuiltValueField(wireName: r'permissions')
  BuiltList<String> get permissions;

  PermissionSet._();

  factory PermissionSet([void updates(PermissionSetBuilder b)]) =
      _$PermissionSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionSet> get serializer =>
      _$PermissionSetSerializer();
}

class _$PermissionSetSerializer implements PrimitiveSerializer<PermissionSet> {
  @override
  final Iterable<Type> types = const [PermissionSet, _$PermissionSet];

  @override
  final String wireName = r'PermissionSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'permissions';
    yield serializers.serialize(
      object.permissions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionSet object, {
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
    required PermissionSetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.permissions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionSetBuilder();
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
