//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/calculation_algorithm_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_calculation_method_request.g.dart';

/// UpdateCalculationMethodRequest
///
/// Properties:
/// * [testingStandardCode]
/// * [reportNameCode]
/// * [algorithmType]
/// * [specimenCount]
/// * [formula]
/// * [conditions]
/// * [roundingRule]
/// * [remark]
/// * [sortOrder]
@BuiltValue()
abstract class UpdateCalculationMethodRequest
    implements
        Built<
          UpdateCalculationMethodRequest,
          UpdateCalculationMethodRequestBuilder
        > {
  @BuiltValueField(wireName: r'testingStandardCode')
  String? get testingStandardCode;

  @BuiltValueField(wireName: r'reportNameCode')
  String? get reportNameCode;

  @BuiltValueField(wireName: r'algorithmType')
  CalculationAlgorithmType? get algorithmType;
  // enum algorithmTypeEnum {  simple_avg,  compressive_strength,  flexural_strength,  steel_tensile,  formula,  manual,  auto_calc_ratio,  };

  @BuiltValueField(wireName: r'specimenCount')
  int? get specimenCount;

  @BuiltValueField(wireName: r'formula')
  String? get formula;

  @BuiltValueField(wireName: r'conditions')
  String? get conditions;

  @BuiltValueField(wireName: r'roundingRule')
  String? get roundingRule;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  UpdateCalculationMethodRequest._();

  factory UpdateCalculationMethodRequest([
    void updates(UpdateCalculationMethodRequestBuilder b),
  ]) = _$UpdateCalculationMethodRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCalculationMethodRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCalculationMethodRequest> get serializer =>
      _$UpdateCalculationMethodRequestSerializer();
}

class _$UpdateCalculationMethodRequestSerializer
    implements PrimitiveSerializer<UpdateCalculationMethodRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateCalculationMethodRequest,
    _$UpdateCalculationMethodRequest,
  ];

  @override
  final String wireName = r'UpdateCalculationMethodRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCalculationMethodRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.testingStandardCode != null) {
      yield r'testingStandardCode';
      yield serializers.serialize(
        object.testingStandardCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.reportNameCode != null) {
      yield r'reportNameCode';
      yield serializers.serialize(
        object.reportNameCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.algorithmType != null) {
      yield r'algorithmType';
      yield serializers.serialize(
        object.algorithmType,
        specifiedType: const FullType(CalculationAlgorithmType),
      );
    }
    if (object.specimenCount != null) {
      yield r'specimenCount';
      yield serializers.serialize(
        object.specimenCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.formula != null) {
      yield r'formula';
      yield serializers.serialize(
        object.formula,
        specifiedType: const FullType(String),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(String),
      );
    }
    if (object.roundingRule != null) {
      yield r'roundingRule';
      yield serializers.serialize(
        object.roundingRule,
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
    UpdateCalculationMethodRequest object, {
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
    required UpdateCalculationMethodRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'testingStandardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testingStandardCode = valueDes;
          break;
        case r'reportNameCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportNameCode = valueDes;
          break;
        case r'algorithmType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CalculationAlgorithmType),
          ) as CalculationAlgorithmType?;
          if (valueDes == null) continue;
          result.algorithmType = valueDes;
          break;
        case r'specimenCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.specimenCount = valueDes;
          break;
        case r'formula':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.formula = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.conditions = valueDes;
          break;
        case r'roundingRule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.roundingRule = valueDes;
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
  UpdateCalculationMethodRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCalculationMethodRequestBuilder();
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
