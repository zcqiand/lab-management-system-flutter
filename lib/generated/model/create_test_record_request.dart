//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_test_record_request.g.dart';

/// CreateTestRecordRequest
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
abstract class CreateTestRecordRequest
    implements Built<CreateTestRecordRequest, CreateTestRecordRequestBuilder> {
  @BuiltValueField(wireName: r'sampleId')
  String get sampleId;

  @BuiltValueField(wireName: r'parameterCode')
  String get parameterCode;

  @BuiltValueField(wireName: r'standardCode')
  String? get standardCode;

  @BuiltValueField(wireName: r'requirementCode')
  String? get requirementCode;

  @BuiltValueField(wireName: r'requirement')
  String get requirement;

  @BuiltValueField(wireName: r'result')
  String get result;

  @BuiltValueField(wireName: r'verdict')
  String? get verdict;

  CreateTestRecordRequest._();

  factory CreateTestRecordRequest([
    void updates(CreateTestRecordRequestBuilder b),
  ]) = _$CreateTestRecordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTestRecordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTestRecordRequest> get serializer =>
      _$CreateTestRecordRequestSerializer();
}

class _$CreateTestRecordRequestSerializer
    implements PrimitiveSerializer<CreateTestRecordRequest> {
  @override
  final Iterable<Type> types = const [
    CreateTestRecordRequest,
    _$CreateTestRecordRequest,
  ];

  @override
  final String wireName = r'CreateTestRecordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTestRecordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sampleId';
    yield serializers.serialize(
      object.sampleId,
      specifiedType: const FullType(String),
    );
    yield r'parameterCode';
    yield serializers.serialize(
      object.parameterCode,
      specifiedType: const FullType(String),
    );
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
    yield r'requirement';
    yield serializers.serialize(
      object.requirement,
      specifiedType: const FullType(String),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(String),
    );
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
    CreateTestRecordRequest object, {
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
    required CreateTestRecordRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sampleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sampleId = valueDes;
          break;
        case r'parameterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType(String),
          ) as String;
          result.requirement = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  CreateTestRecordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTestRecordRequestBuilder();
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
