//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/flow_action.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_action_request.g.dart';

/// FlowActionRequest
///
/// Properties:
/// * [ids]
/// * [action]
/// * [operator_]
/// * [reason]
@BuiltValue()
abstract class FlowActionRequest
    implements Built<FlowActionRequest, FlowActionRequestBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<String> get ids;

  @BuiltValueField(wireName: r'action')
  FlowAction get action;
  // enum actionEnum {  submit,  return,  withdraw,  };

  @BuiltValueField(wireName: r'operator')
  String get operator_;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  FlowActionRequest._();

  factory FlowActionRequest([void updates(FlowActionRequestBuilder b)]) =
      _$FlowActionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowActionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowActionRequest> get serializer =>
      _$FlowActionRequestSerializer();
}

class _$FlowActionRequestSerializer
    implements PrimitiveSerializer<FlowActionRequest> {
  @override
  final Iterable<Type> types = const [FlowActionRequest, _$FlowActionRequest];

  @override
  final String wireName = r'FlowActionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowActionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ids';
    yield serializers.serialize(
      object.ids,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(FlowAction),
    );
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(String),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlowActionRequest object, {
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
    required FlowActionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.ids.replace(valueDes);
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowAction),
          ) as FlowAction;
          result.action = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlowActionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowActionRequestBuilder();
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
