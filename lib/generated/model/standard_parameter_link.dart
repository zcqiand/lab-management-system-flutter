//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'standard_parameter_link.g.dart';

/// StandardParameterLink
///
/// Properties:
/// * [inspectionStandardCode]
/// * [inspectionParameterCode]
@BuiltValue()
abstract class StandardParameterLink
    implements Built<StandardParameterLink, StandardParameterLinkBuilder> {
  @BuiltValueField(wireName: r'inspectionStandardCode')
  String get inspectionStandardCode;

  @BuiltValueField(wireName: r'inspectionParameterCode')
  String get inspectionParameterCode;

  StandardParameterLink._();

  factory StandardParameterLink([
    void updates(StandardParameterLinkBuilder b),
  ]) = _$StandardParameterLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StandardParameterLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StandardParameterLink> get serializer =>
      _$StandardParameterLinkSerializer();
}

class _$StandardParameterLinkSerializer
    implements PrimitiveSerializer<StandardParameterLink> {
  @override
  final Iterable<Type> types = const [
    StandardParameterLink,
    _$StandardParameterLink,
  ];

  @override
  final String wireName = r'StandardParameterLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StandardParameterLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'inspectionStandardCode';
    yield serializers.serialize(
      object.inspectionStandardCode,
      specifiedType: const FullType(String),
    );
    yield r'inspectionParameterCode';
    yield serializers.serialize(
      object.inspectionParameterCode,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StandardParameterLink object, {
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
    required StandardParameterLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inspectionStandardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionStandardCode = valueDes;
          break;
        case r'inspectionParameterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inspectionParameterCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StandardParameterLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StandardParameterLinkBuilder();
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
