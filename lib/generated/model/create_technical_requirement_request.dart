//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/requirement_comparison.dart';
import 'package:lab_management_system_flutter/generated/model/requirement_value_type.dart';
import 'package:lab_management_system_flutter/generated/model/requirement_judgment_mode.dart';
import 'package:lab_management_system_flutter/generated/model/requirement_verification_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_technical_requirement_request.g.dart';

/// CreateTechnicalRequirementRequest
///
/// Properties:
/// * [inspectionObjectCode]
/// * [inspectionParameterCode]
/// * [judgmentStandardCode]
/// * [conditions]
/// * [valueType]
/// * [minValue]
/// * [maxValue]
/// * [targetValue]
/// * [expression]
/// * [unit]
/// * [comparison]
/// * [judgmentMode]
/// * [verificationStatus]
/// * [clause]
/// * [sourcePage]
/// * [sourceHash]
/// * [brand]
/// * [model]
/// * [grade]
/// * [spec]
/// * [sieve]
/// * [remark]
/// * [sortOrder]
@BuiltValue()
abstract class CreateTechnicalRequirementRequest
    implements
        Built<
          CreateTechnicalRequirementRequest,
          CreateTechnicalRequirementRequestBuilder
        > {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  @BuiltValueField(wireName: r'judgmentStandardCode')
  String get judgmentStandardCode;

  @BuiltValueField(wireName: r'conditions')
  String? get conditions;

  @BuiltValueField(wireName: r'valueType')
  RequirementValueType? get valueType;
  // enum valueTypeEnum {  numeric,  string,  range,  formula,  manual,  };

  @BuiltValueField(wireName: r'minValue')
  int? get minValue;

  @BuiltValueField(wireName: r'maxValue')
  int? get maxValue;

  @BuiltValueField(wireName: r'targetValue')
  String? get targetValue;

  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'comparison')
  RequirementComparison? get comparison;
  // enum comparisonEnum {  ≥,  ≤,  =,  range,  eq,  };

  @BuiltValueField(wireName: r'judgmentMode')
  RequirementJudgmentMode? get judgmentMode;
  // enum judgmentModeEnum {  automatic,  manual,  };

  @BuiltValueField(wireName: r'verificationStatus')
  RequirementVerificationStatus? get verificationStatus;
  // enum verificationStatusEnum {  draft,  reviewed,  verified,  rejected,  };

  @BuiltValueField(wireName: r'clause')
  String? get clause;

  @BuiltValueField(wireName: r'sourcePage')
  int? get sourcePage;

  @BuiltValueField(wireName: r'sourceHash')
  String? get sourceHash;

  @BuiltValueField(wireName: r'brand')
  String? get brand;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'grade')
  String? get grade;

  @BuiltValueField(wireName: r'spec')
  String? get spec;

  @BuiltValueField(wireName: r'sieve')
  String? get sieve;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  CreateTechnicalRequirementRequest._();

  factory CreateTechnicalRequirementRequest([
    void updates(CreateTechnicalRequirementRequestBuilder b),
  ]) = _$CreateTechnicalRequirementRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTechnicalRequirementRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTechnicalRequirementRequest> get serializer =>
      _$CreateTechnicalRequirementRequestSerializer();
}

class _$CreateTechnicalRequirementRequestSerializer
    implements PrimitiveSerializer<CreateTechnicalRequirementRequest> {
  @override
  final Iterable<Type> types = const [
    CreateTechnicalRequirementRequest,
    _$CreateTechnicalRequirementRequest,
  ];

  @override
  final String wireName = r'CreateTechnicalRequirementRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTechnicalRequirementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inspectionObjectCode';
    yield serializers.serialize(
      object.inspectionObjectCode,
      specifiedType: const FullType(String),
    );
    yield r'inspectionParameterCode';
    yield serializers.serialize(
      object.inspectionParameterCode,
      specifiedType: const FullType(String),
    );
    yield r'judgmentStandardCode';
    yield serializers.serialize(
      object.judgmentStandardCode,
      specifiedType: const FullType(String),
    );
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueType != null) {
      yield r'valueType';
      yield serializers.serialize(
        object.valueType,
        specifiedType: const FullType(RequirementValueType),
      );
    }
    if (object.minValue != null) {
      yield r'minValue';
      yield serializers.serialize(
        object.minValue,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxValue != null) {
      yield r'maxValue';
      yield serializers.serialize(
        object.maxValue,
        specifiedType: const FullType(int),
      );
    }
    if (object.targetValue != null) {
      yield r'targetValue';
      yield serializers.serialize(
        object.targetValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType(String),
      );
    }
    if (object.comparison != null) {
      yield r'comparison';
      yield serializers.serialize(
        object.comparison,
        specifiedType: const FullType(RequirementComparison),
      );
    }
    if (object.judgmentMode != null) {
      yield r'judgmentMode';
      yield serializers.serialize(
        object.judgmentMode,
        specifiedType: const FullType(RequirementJudgmentMode),
      );
    }
    if (object.verificationStatus != null) {
      yield r'verificationStatus';
      yield serializers.serialize(
        object.verificationStatus,
        specifiedType: const FullType(RequirementVerificationStatus),
      );
    }
    if (object.clause != null) {
      yield r'clause';
      yield serializers.serialize(
        object.clause,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourcePage != null) {
      yield r'sourcePage';
      yield serializers.serialize(
        object.sourcePage,
        specifiedType: const FullType(int),
      );
    }
    if (object.sourceHash != null) {
      yield r'sourceHash';
      yield serializers.serialize(
        object.sourceHash,
        specifiedType: const FullType(String),
      );
    }
    if (object.brand != null) {
      yield r'brand';
      yield serializers.serialize(
        object.brand,
        specifiedType: const FullType(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType(String),
      );
    }
    if (object.grade != null) {
      yield r'grade';
      yield serializers.serialize(
        object.grade,
        specifiedType: const FullType(String),
      );
    }
    if (object.spec != null) {
      yield r'spec';
      yield serializers.serialize(
        object.spec,
        specifiedType: const FullType(String),
      );
    }
    if (object.sieve != null) {
      yield r'sieve';
      yield serializers.serialize(
        object.sieve,
        specifiedType: const FullType(String),
      );
    }
    if (object.remark != null) {
      yield r'remark';
      yield serializers.serialize(
        object.remark,
        specifiedType: const FullType(String),
      );
    }
    if (object.sortOrder != null) {
      yield r'sortOrder';
      yield serializers.serialize(
        object.sortOrder,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTechnicalRequirementRequest object, {
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
    required CreateTechnicalRequirementRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inspectionObjectCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionObjectCode = valueDes;
          break;
        case r'inspectionParameterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionParameterCode = valueDes;
          break;
        case r'judgmentStandardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.judgmentStandardCode = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.conditions = valueDes;
          break;
        case r'valueType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RequirementValueType),
          ) as RequirementValueType?;
          if (valueDes == null) continue;
          result.valueType = valueDes;
          break;
        case r'minValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minValue = valueDes;
          break;
        case r'maxValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxValue = valueDes;
          break;
        case r'targetValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.targetValue = valueDes;
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.expression = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'comparison':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RequirementComparison),
          ) as RequirementComparison?;
          if (valueDes == null) continue;
          result.comparison = valueDes;
          break;
        case r'judgmentMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RequirementJudgmentMode),
          ) as RequirementJudgmentMode?;
          if (valueDes == null) continue;
          result.judgmentMode = valueDes;
          break;
        case r'verificationStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RequirementVerificationStatus,
            ),
          ) as RequirementVerificationStatus?;
          if (valueDes == null) continue;
          result.verificationStatus = valueDes;
          break;
        case r'clause':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.clause = valueDes;
          break;
        case r'sourcePage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sourcePage = valueDes;
          break;
        case r'sourceHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceHash = valueDes;
          break;
        case r'brand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.brand = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'grade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.grade = valueDes;
          break;
        case r'spec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.spec = valueDes;
          break;
        case r'sieve':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sieve = valueDes;
          break;
        case r'remark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remark = valueDes;
          break;
        case r'sortOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sortOrder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTechnicalRequirementRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTechnicalRequirementRequestBuilder();
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
