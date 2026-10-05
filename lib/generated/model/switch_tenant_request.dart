//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'switch_tenant_request.g.dart';

/// SwitchTenantRequest
///
/// Properties:
/// * [tenantId]
@BuiltValue()
abstract class SwitchTenantRequest
    implements Built<SwitchTenantRequest, SwitchTenantRequestBuilder> {
  @BuiltValueField(wireName: r'tenantId')
  String get tenantId;

  SwitchTenantRequest._();

  factory SwitchTenantRequest([void updates(SwitchTenantRequestBuilder b)]) =
      _$SwitchTenantRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SwitchTenantRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SwitchTenantRequest> get serializer =>
      _$SwitchTenantRequestSerializer();
}

class _$SwitchTenantRequestSerializer
    implements PrimitiveSerializer<SwitchTenantRequest> {
  @override
  final Iterable<Type> types = const [
    SwitchTenantRequest,
    _$SwitchTenantRequest,
  ];

  @override
  final String wireName = r'SwitchTenantRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SwitchTenantRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tenantId';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SwitchTenantRequest object, {
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
    required SwitchTenantRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SwitchTenantRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SwitchTenantRequestBuilder();
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
