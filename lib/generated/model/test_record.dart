//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_record.g.dart';

/// TestRecord
///
/// Properties:
/// * [id]
/// * [tenantId]
/// * [sampleId]
/// * [parameterCode]
/// * [standardCode]
/// * [requirementCode]
/// * [requirement]
/// * [result]
/// * [verdict]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class TestRecord implements Built<TestRecord, TestRecordBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenantId')
  String get tenantId;

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

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  TestRecord._();

  factory TestRecord([void updates(TestRecordBuilder b)]) = _$TestRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRecord> get serializer => _$TestRecordSerializer();
}

class _$TestRecordSerializer implements PrimitiveSerializer<TestRecord> {
  @override
  final Iterable<Type> types = const [TestRecord, _$TestRecord];

  @override
  final String wireName = r'TestRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenantId';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
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
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TestRecord object, {
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
    required TestRecordBuilder result,
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
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
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
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRecordBuilder();
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
