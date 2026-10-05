//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assign_task_request.g.dart';

/// AssignTaskRequest
///
/// Properties:
/// * [assigneeId]
/// * [assigneeName]
/// * [plannedTestDate]
@BuiltValue()
abstract class AssignTaskRequest
    implements Built<AssignTaskRequest, AssignTaskRequestBuilder> {
  @BuiltValueField(wireName: r'assigneeId')
  String? get assigneeId;

  @BuiltValueField(wireName: r'assigneeName')
  String? get assigneeName;

  @BuiltValueField(wireName: r'plannedTestDate')
  String? get plannedTestDate;

  AssignTaskRequest._();

  factory AssignTaskRequest([void updates(AssignTaskRequestBuilder b)]) =
      _$AssignTaskRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssignTaskRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssignTaskRequest> get serializer =>
      _$AssignTaskRequestSerializer();
}

class _$AssignTaskRequestSerializer
    implements PrimitiveSerializer<AssignTaskRequest> {
  @override
  final Iterable<Type> types = const [AssignTaskRequest, _$AssignTaskRequest];

  @override
  final String wireName = r'AssignTaskRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssignTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assigneeId != null) {
      yield r'assigneeId';
      yield serializers.serialize(
        object.assigneeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.assigneeName != null) {
      yield r'assigneeName';
      yield serializers.serialize(
        object.assigneeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.plannedTestDate != null) {
      yield r'plannedTestDate';
      yield serializers.serialize(
        object.plannedTestDate,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssignTaskRequest object, {
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
    required AssignTaskRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assigneeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assigneeId = valueDes;
          break;
        case r'assigneeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assigneeName = valueDes;
          break;
        case r'plannedTestDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.plannedTestDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssignTaskRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignTaskRequestBuilder();
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
