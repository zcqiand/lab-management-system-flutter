//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calculation_algorithm_type.g.dart';

class CalculationAlgorithmType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'simple_avg')
  static const CalculationAlgorithmType simpleAvg = _$simpleAvg;
  @BuiltValueEnumConst(wireName: r'compressive_strength')
  static const CalculationAlgorithmType compressiveStrength =
      _$compressiveStrength;
  @BuiltValueEnumConst(wireName: r'flexural_strength')
  static const CalculationAlgorithmType flexuralStrength = _$flexuralStrength;
  @BuiltValueEnumConst(wireName: r'steel_tensile')
  static const CalculationAlgorithmType steelTensile = _$steelTensile;
  @BuiltValueEnumConst(wireName: r'formula')
  static const CalculationAlgorithmType formula = _$formula;
  @BuiltValueEnumConst(wireName: r'manual')
  static const CalculationAlgorithmType manual = _$manual;
  @BuiltValueEnumConst(wireName: r'auto_calc_ratio')
  static const CalculationAlgorithmType autoCalcRatio = _$autoCalcRatio;

  static Serializer<CalculationAlgorithmType> get serializer =>
      _$calculationAlgorithmTypeSerializer;

  const CalculationAlgorithmType._(String name) : super(name);

  static BuiltSet<CalculationAlgorithmType> get values => _$values;
  static CalculationAlgorithmType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
