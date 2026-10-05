//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'param_interface_link.g.dart';

/// ParamInterfaceLink
///
/// Properties:
/// * [inspectionParameterCode]
/// * [paramInterfaceCode]
/// * [reportNameCode]
/// * [config]
@BuiltValue()
abstract class ParamInterfaceLink
    implements Built<ParamInterfaceLink, ParamInterfaceLinkBuilder> {
  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  @BuiltValueField(wireName: r'paramInterfaceCode')
  String get paramInterfaceCode;

  @BuiltValueField(wireName: r'reportNameCode')
  String? get reportNameCode;

  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  ParamInterfaceLink._();

  factory ParamInterfaceLink([void updates(ParamInterfaceLinkBuilder b)]) =
      _$ParamInterfaceLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParamInterfaceLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParamInterfaceLink> get serializer =>
      _$ParamInterfaceLinkSerializer();
}

class _$ParamInterfaceLinkSerializer
    implements PrimitiveSerializer<ParamInterfaceLink> {
  @override
  final Iterable<Type> types = const [ParamInterfaceLink, _$ParamInterfaceLink];

  @override
  final String wireName = r'ParamInterfaceLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParamInterfaceLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inspectionParameterCode';
    yield serializers.serialize(
      object.inspectionParameterCode,
      specifiedType: const FullType(String),
    );
    yield r'paramInterfaceCode';
    yield serializers.serialize(
      object.paramInterfaceCode,
      specifiedType: const FullType(String),
    );
    if (object.reportNameCode != null) {
      yield r'reportNameCode';
      yield serializers.serialize(
        object.reportNameCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParamInterfaceLink object, {
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
    required ParamInterfaceLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inspectionParameterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionParameterCode = valueDes;
          break;
        case r'paramInterfaceCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paramInterfaceCode = valueDes;
          break;
        case r'reportNameCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportNameCode = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType.nullable(JsonObject),
            ]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParamInterfaceLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParamInterfaceLinkBuilder();
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
