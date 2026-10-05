//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/param_interface.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'param_interfaces_list_param_interfaces200_response.g.dart';

/// ParamInterfacesListParamInterfaces200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class ParamInterfacesListParamInterfaces200Response
    implements
        Built<
          ParamInterfacesListParamInterfaces200Response,
          ParamInterfacesListParamInterfaces200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<ParamInterface> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  ParamInterfacesListParamInterfaces200Response._();

  factory ParamInterfacesListParamInterfaces200Response([
    void updates(ParamInterfacesListParamInterfaces200ResponseBuilder b),
  ]) = _$ParamInterfacesListParamInterfaces200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ParamInterfacesListParamInterfaces200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParamInterfacesListParamInterfaces200Response>
  get serializer => _$ParamInterfacesListParamInterfaces200ResponseSerializer();
}

class _$ParamInterfacesListParamInterfaces200ResponseSerializer
    implements
        PrimitiveSerializer<ParamInterfacesListParamInterfaces200Response> {
  @override
  final Iterable<Type> types = const [
    ParamInterfacesListParamInterfaces200Response,
    _$ParamInterfacesListParamInterfaces200Response,
  ];

  @override
  final String wireName = r'ParamInterfacesListParamInterfaces200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParamInterfacesListParamInterfaces200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ParamInterface)]),
    );
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'pageSize';
    yield serializers.serialize(
      object.pageSize,
      specifiedType: const FullType(int),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ParamInterfacesListParamInterfaces200Response object, {
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
    required ParamInterfacesListParamInterfaces200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(ParamInterface),
            ]),
          ) as BuiltList<ParamInterface>;
          result.items.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParamInterfacesListParamInterfaces200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParamInterfacesListParamInterfaces200ResponseBuilder();
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
