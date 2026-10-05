//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/flow_action.dart';
import 'package:lab_management_system_flutter/generated/model/flow_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_history_entry.g.dart';

/// FlowHistoryEntry
///
/// Properties:
/// * [action]
/// * [from]
/// * [to]
/// * [operator_]
/// * [at]
/// * [reason]
@BuiltValue()
abstract class FlowHistoryEntry
    implements Built<FlowHistoryEntry, FlowHistoryEntryBuilder> {
  @BuiltValueField(wireName: r'action')
  FlowAction get action;
  // enum actionEnum {  submit,  return,  withdraw,  };

  @BuiltValueField(wireName: r'from')
  FlowStatus get from;
  // enum fromEnum {  receiving,  task_assignment,  data_entry,  review,  approval,  issuance,  archived,  completed,  };

  @BuiltValueField(wireName: r'to')
  FlowStatus get to;
  // enum toEnum {  receiving,  task_assignment,  data_entry,  review,  approval,  issuance,  archived,  completed,  };

  @BuiltValueField(wireName: r'operator')
  String get operator_;

  @BuiltValueField(wireName: r'at')
  String get at;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  FlowHistoryEntry._();

  factory FlowHistoryEntry([void updates(FlowHistoryEntryBuilder b)]) =
      _$FlowHistoryEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowHistoryEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowHistoryEntry> get serializer =>
      _$FlowHistoryEntrySerializer();
}

class _$FlowHistoryEntrySerializer
    implements PrimitiveSerializer<FlowHistoryEntry> {
  @override
  final Iterable<Type> types = const [FlowHistoryEntry, _$FlowHistoryEntry];

  @override
  final String wireName = r'FlowHistoryEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowHistoryEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(FlowAction),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(FlowStatus),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(FlowStatus),
    );
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
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
    FlowHistoryEntry object, {
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
    required FlowHistoryEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowAction),
          ) as FlowAction;
          result.action = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowStatus),
          ) as FlowStatus;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowStatus),
          ) as FlowStatus;
          result.to = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.at = valueDes;
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
  FlowHistoryEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowHistoryEntryBuilder();
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
