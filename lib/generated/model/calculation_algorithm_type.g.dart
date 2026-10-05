// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation_algorithm_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CalculationAlgorithmType _$simpleAvg = const CalculationAlgorithmType._(
  'simpleAvg',
);
const CalculationAlgorithmType _$compressiveStrength =
    const CalculationAlgorithmType._('compressiveStrength');
const CalculationAlgorithmType _$flexuralStrength =
    const CalculationAlgorithmType._('flexuralStrength');
const CalculationAlgorithmType _$steelTensile =
    const CalculationAlgorithmType._('steelTensile');
const CalculationAlgorithmType _$formula = const CalculationAlgorithmType._(
  'formula',
);
const CalculationAlgorithmType _$manual = const CalculationAlgorithmType._(
  'manual',
);
const CalculationAlgorithmType _$autoCalcRatio =
    const CalculationAlgorithmType._('autoCalcRatio');

CalculationAlgorithmType _$valueOf(String name) {
  switch (name) {
    case 'simpleAvg':
      return _$simpleAvg;
    case 'compressiveStrength':
      return _$compressiveStrength;
    case 'flexuralStrength':
      return _$flexuralStrength;
    case 'steelTensile':
      return _$steelTensile;
    case 'formula':
      return _$formula;
    case 'manual':
      return _$manual;
    case 'autoCalcRatio':
      return _$autoCalcRatio;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CalculationAlgorithmType> _$values =
    BuiltSet<CalculationAlgorithmType>(const <CalculationAlgorithmType>[
      _$simpleAvg,
      _$compressiveStrength,
      _$flexuralStrength,
      _$steelTensile,
      _$formula,
      _$manual,
      _$autoCalcRatio,
    ]);

Serializer<CalculationAlgorithmType> _$calculationAlgorithmTypeSerializer =
    _$CalculationAlgorithmTypeSerializer();

class _$CalculationAlgorithmTypeSerializer
    implements PrimitiveSerializer<CalculationAlgorithmType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'simpleAvg': 'simple_avg',
    'compressiveStrength': 'compressive_strength',
    'flexuralStrength': 'flexural_strength',
    'steelTensile': 'steel_tensile',
    'formula': 'formula',
    'manual': 'manual',
    'autoCalcRatio': 'auto_calc_ratio',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'simple_avg': 'simpleAvg',
    'compressive_strength': 'compressiveStrength',
    'flexural_strength': 'flexuralStrength',
    'steel_tensile': 'steelTensile',
    'formula': 'formula',
    'manual': 'manual',
    'auto_calc_ratio': 'autoCalcRatio',
  };

  @override
  final Iterable<Type> types = const <Type>[CalculationAlgorithmType];
  @override
  final String wireName = 'CalculationAlgorithmType';

  @override
  Object serialize(
    Serializers serializers,
    CalculationAlgorithmType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CalculationAlgorithmType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CalculationAlgorithmType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
