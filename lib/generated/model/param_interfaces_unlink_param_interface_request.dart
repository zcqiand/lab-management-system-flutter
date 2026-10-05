//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'param_interfaces_unlink_param_interface_request.g.dart';

/// ParamInterfacesUnlinkParamInterfaceRequest
///
/// Properties:
/// * [inspectionParameterCode]
/// * [paramInterfaceCode]
@BuiltValue()
abstract class ParamInterfacesUnlinkParamInterfaceRequest
    implements
        Built<
          ParamInterfacesUnlinkParamInterfaceRequest,
          ParamInterfacesUnlinkParamInterfaceRequestBuilder
        > {
  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  @BuiltValueField(wireName: r'paramInterfaceCode')
  String get paramInterfaceCode;

  ParamInterfacesUnlinkParamInterfaceRequest._();

  factory ParamInterfacesUnlinkParamInterfaceRequest([
    void updates(ParamInterfacesUnlinkParamInterfaceRequestBuilder b),
  ]) = _$ParamInterfacesUnlinkParamInterfaceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParamInterfacesUnlinkParamInterfaceRequestBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParamInterfacesUnlinkParamInterfaceRequest>
  get serializer => _$ParamInterfacesUnlinkParamInterfaceRequestSerializer();
}

class _$ParamInterfacesUnlinkParamInterfaceRequestSerializer
    implements PrimitiveSerializer<ParamInterfacesUnlinkParamInterfaceRequest> {
  @override
  final Iterable<Type> types = const [
    ParamInterfacesUnlinkParamInterfaceRequest,
    _$ParamInterfacesUnlinkParamInterfaceRequest,
  ];

  @override
  final String wireName = r'ParamInterfacesUnlinkParamInterfaceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParamInterfacesUnlinkParamInterfaceRequest object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ParamInterfacesUnlinkParamInterfaceRequest object, {
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
    required ParamInterfacesUnlinkParamInterfaceRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParamInterfacesUnlinkParamInterfaceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParamInterfacesUnlinkParamInterfaceRequestBuilder();
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
