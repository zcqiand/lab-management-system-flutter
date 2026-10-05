//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'material_qualified_rate.g.dart';

/// MaterialQualifiedRate
///
/// Properties:
/// * [total]
/// * [pass]
/// * [rate]
@BuiltValue()
abstract class MaterialQualifiedRate
    implements Built<MaterialQualifiedRate, MaterialQualifiedRateBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  @BuiltValueField(wireName: r'pass')
  int get pass;

  @BuiltValueField(wireName: r'rate')
  double get rate;

  MaterialQualifiedRate._();

  factory MaterialQualifiedRate([
    void updates(MaterialQualifiedRateBuilder b),
  ]) = _$MaterialQualifiedRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaterialQualifiedRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MaterialQualifiedRate> get serializer =>
      _$MaterialQualifiedRateSerializer();
}

class _$MaterialQualifiedRateSerializer
    implements PrimitiveSerializer<MaterialQualifiedRate> {
  @override
  final Iterable<Type> types = const [
    MaterialQualifiedRate,
    _$MaterialQualifiedRate,
  ];

  @override
  final String wireName = r'MaterialQualifiedRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MaterialQualifiedRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'pass';
    yield serializers.serialize(
      object.pass,
      specifiedType: const FullType(int),
    );
    yield r'rate';
    yield serializers.serialize(
      object.rate,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MaterialQualifiedRate object, {
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
    required MaterialQualifiedRateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'pass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pass = valueDes;
          break;
        case r'rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.rate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MaterialQualifiedRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaterialQualifiedRateBuilder();
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
