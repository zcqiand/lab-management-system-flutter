//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_records_set_verdict_request.g.dart';

/// TestRecordsSetVerdictRequest
///
/// Properties:
/// * [verdict]
@BuiltValue()
abstract class TestRecordsSetVerdictRequest
    implements
        Built<
          TestRecordsSetVerdictRequest,
          TestRecordsSetVerdictRequestBuilder
        > {
  @BuiltValueField(wireName: r'verdict')
  String get verdict;

  TestRecordsSetVerdictRequest._();

  factory TestRecordsSetVerdictRequest([
    void updates(TestRecordsSetVerdictRequestBuilder b),
  ]) = _$TestRecordsSetVerdictRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRecordsSetVerdictRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRecordsSetVerdictRequest> get serializer =>
      _$TestRecordsSetVerdictRequestSerializer();
}

class _$TestRecordsSetVerdictRequestSerializer
    implements PrimitiveSerializer<TestRecordsSetVerdictRequest> {
  @override
  final Iterable<Type> types = const [
    TestRecordsSetVerdictRequest,
    _$TestRecordsSetVerdictRequest,
  ];

  @override
  final String wireName = r'TestRecordsSetVerdictRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRecordsSetVerdictRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'verdict';
    yield serializers.serialize(
      object.verdict,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TestRecordsSetVerdictRequest object, {
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
    required TestRecordsSetVerdictRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  TestRecordsSetVerdictRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRecordsSetVerdictRequestBuilder();
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
