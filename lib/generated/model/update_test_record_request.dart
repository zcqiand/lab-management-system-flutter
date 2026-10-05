//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_test_record_request.g.dart';

/// UpdateTestRecordRequest
///
/// Properties:
/// * [sampleId]
/// * [parameterCode]
/// * [standardCode]
/// * [requirementCode]
/// * [requirement]
/// * [result]
/// * [verdict]
@BuiltValue()
abstract class UpdateTestRecordRequest
    implements Built<UpdateTestRecordRequest, UpdateTestRecordRequestBuilder> {
  @BuiltValueField(wireName: r'sampleId')
  String? get sampleId;

  @BuiltValueField(wireName: r'parameterCode')
  String? get parameterCode;

  @BuiltValueField(wireName: r'standardCode')
  String? get standardCode;

  @BuiltValueField(wireName: r'requirementCode')
  String? get requirementCode;

  @BuiltValueField(wireName: r'requirement')
  String? get requirement;

  @BuiltValueField(wireName: r'result')
  String? get result;

  @BuiltValueField(wireName: r'verdict')
  String? get verdict;

  UpdateTestRecordRequest._();

  factory UpdateTestRecordRequest([
    void updates(UpdateTestRecordRequestBuilder b),
  ]) = _$UpdateTestRecordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTestRecordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTestRecordRequest> get serializer =>
      _$UpdateTestRecordRequestSerializer();
}

class _$UpdateTestRecordRequestSerializer
    implements PrimitiveSerializer<UpdateTestRecordRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateTestRecordRequest,
    _$UpdateTestRecordRequest,
  ];

  @override
  final String wireName = r'UpdateTestRecordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTestRecordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sampleId != null) {
      yield r'sampleId';
      yield serializers.serialize(
        object.sampleId,
        specifiedType: const FullType(String),
      );
    }
    if (object.parameterCode != null) {
      yield r'parameterCode';
      yield serializers.serialize(
        object.parameterCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.standardCode != null) {
      yield r'standardCode';
      yield serializers.serialize(
        object.standardCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.requirementCode != null) {
      yield r'requirementCode';
      yield serializers.serialize(
        object.requirementCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.requirement != null) {
      yield r'requirement';
      yield serializers.serialize(
        object.requirement,
        specifiedType: const FullType(String),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(String),
      );
    }
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTestRecordRequest object, {
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
    required UpdateTestRecordRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sampleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sampleId = valueDes;
          break;
        case r'parameterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parameterCode = valueDes;
          break;
        case r'standardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.standardCode = valueDes;
          break;
        case r'requirementCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.requirementCode = valueDes;
          break;
        case r'requirement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.requirement = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.result = valueDes;
          break;
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.verdict = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTestRecordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTestRecordRequestBuilder();
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
