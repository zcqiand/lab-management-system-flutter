//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/calculation_algorithm_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calculation_method.g.dart';

/// CalculationMethod
///
/// Properties:
/// * [inspectionObjectCode]
/// * [inspectionParameterCode]
/// * [testingStandardCode]
/// * [reportNameCode]
/// * [algorithmType]
/// * [specimenCount]
/// * [formula]
/// * [conditions]
/// * [roundingRule]
/// * [remark]
/// * [sortOrder]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class CalculationMethod
    implements Built<CalculationMethod, CalculationMethodBuilder> {
  @BuiltValueField(wireName: r'inspectionObjectCode')
  String get inspectionObjectCode;

  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  @BuiltValueField(wireName: r'testingStandardCode')
  String? get testingStandardCode;

  @BuiltValueField(wireName: r'reportNameCode')
  String? get reportNameCode;

  @BuiltValueField(wireName: r'algorithmType')
  CalculationAlgorithmType get algorithmType;
  // enum algorithmTypeEnum {  simple_avg,  compressive_strength,  flexural_strength,  steel_tensile,  formula,  manual,  auto_calc_ratio,  };

  @BuiltValueField(wireName: r'specimenCount')
  int get specimenCount;

  @BuiltValueField(wireName: r'formula')
  String? get formula;

  @BuiltValueField(wireName: r'conditions')
  String? get conditions;

  @BuiltValueField(wireName: r'roundingRule')
  String? get roundingRule;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  @BuiltValueField(wireName: r'sortOrder')
  int get sortOrder;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  CalculationMethod._();

  factory CalculationMethod([void updates(CalculationMethodBuilder b)]) =
      _$CalculationMethod;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalculationMethodBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalculationMethod> get serializer =>
      _$CalculationMethodSerializer();
}

class _$CalculationMethodSerializer
    implements PrimitiveSerializer<CalculationMethod> {
  @override
  final Iterable<Type> types = const [CalculationMethod, _$CalculationMethod];

  @override
  final String wireName = r'CalculationMethod';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalculationMethod object, {
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
    yield r'algorithmType';
    yield serializers.serialize(
      object.algorithmType,
      specifiedType: const FullType(CalculationAlgorithmType),
    );
    yield r'specimenCount';
    yield serializers.serialize(
      object.specimenCount,
      specifiedType: const FullType(int),
    );
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
    yield r'sortOrder';
    yield serializers.serialize(
      object.sortOrder,
      specifiedType: const FullType(int),
    );
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
    CalculationMethod object, {
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
    required CalculationMethodBuilder result,
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
            specifiedType: const FullType(CalculationAlgorithmType),
          ) as CalculationAlgorithmType;
          result.algorithmType = valueDes;
          break;
        case r'specimenCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
            specifiedType: const FullType(int),
          ) as int;
          result.sortOrder = valueDes;
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
  CalculationMethod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalculationMethodBuilder();
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
