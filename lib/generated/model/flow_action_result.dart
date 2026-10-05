//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/flow_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_action_result.g.dart';

/// FlowActionResult
///
/// Properties:
/// * [id]
/// * [ok]
/// * [message]
/// * [flowStatus]
@BuiltValue()
abstract class FlowActionResult
    implements Built<FlowActionResult, FlowActionResultBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'flowStatus')
  FlowStatus? get flowStatus;
  // enum flowStatusEnum {  receiving,  task_assignment,  data_entry,  review,  approval,  issuance,  archived,  completed,  };

  FlowActionResult._();

  factory FlowActionResult([void updates(FlowActionResultBuilder b)]) =
      _$FlowActionResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowActionResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowActionResult> get serializer =>
      _$FlowActionResultSerializer();
}

class _$FlowActionResultSerializer
    implements PrimitiveSerializer<FlowActionResult> {
  @override
  final Iterable<Type> types = const [FlowActionResult, _$FlowActionResult];

  @override
  final String wireName = r'FlowActionResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowActionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ok';
    yield serializers.serialize(object.ok, specifiedType: const FullType(bool));
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.flowStatus != null) {
      yield r'flowStatus';
      yield serializers.serialize(
        object.flowStatus,
        specifiedType: const FullType(FlowStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlowActionResult object, {
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
    required FlowActionResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'flowStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FlowStatus),
          ) as FlowStatus?;
          if (valueDes == null) continue;
          result.flowStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlowActionResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowActionResultBuilder();
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
