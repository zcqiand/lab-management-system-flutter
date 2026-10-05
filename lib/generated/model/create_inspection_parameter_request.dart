//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/inspection_parameter_source_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_inspection_parameter_request.g.dart';

/// CreateInspectionParameterRequest
///
/// Properties:
/// * [code]
/// * [name]
/// * [rawName]
/// * [canonicalName]
/// * [methodText]
/// * [aliases]
/// * [unit]
/// * [sourceType]
/// * [sortOrder]
@BuiltValue()
abstract class CreateInspectionParameterRequest
    implements
        Built<
          CreateInspectionParameterRequest,
          CreateInspectionParameterRequestBuilder
        > {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'rawName')
  String get rawName;

  @BuiltValueField(wireName: r'canonicalName')
  String get canonicalName;

  @BuiltValueField(wireName: r'methodText')
  String? get methodText;

  @BuiltValueField(wireName: r'aliases')
  BuiltList<String>? get aliases;

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'sourceType')
  InspectionParameterSourceType? get sourceType;
  // enum sourceTypeEnum {  official,  custom,  };

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  CreateInspectionParameterRequest._();

  factory CreateInspectionParameterRequest([
    void updates(CreateInspectionParameterRequestBuilder b),
  ]) = _$CreateInspectionParameterRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInspectionParameterRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInspectionParameterRequest> get serializer =>
      _$CreateInspectionParameterRequestSerializer();
}

class _$CreateInspectionParameterRequestSerializer
    implements PrimitiveSerializer<CreateInspectionParameterRequest> {
  @override
  final Iterable<Type> types = const [
    CreateInspectionParameterRequest,
    _$CreateInspectionParameterRequest,
  ];

  @override
  final String wireName = r'CreateInspectionParameterRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInspectionParameterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'rawName';
    yield serializers.serialize(
      object.rawName,
      specifiedType: const FullType(String),
    );
    yield r'canonicalName';
    yield serializers.serialize(
      object.canonicalName,
      specifiedType: const FullType(String),
    );
    if (object.methodText != null) {
      yield r'methodText';
      yield serializers.serialize(
        object.methodText,
        specifiedType: const FullType(String),
      );
    }
    if (object.aliases != null) {
      yield r'aliases';
      yield serializers.serialize(
        object.aliases,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(InspectionParameterSourceType),
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
    CreateInspectionParameterRequest object, {
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
    required CreateInspectionParameterRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'rawName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rawName = valueDes;
          break;
        case r'canonicalName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.canonicalName = valueDes;
          break;
        case r'methodText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.methodText = valueDes;
          break;
        case r'aliases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.aliases.replace(valueDes);
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'sourceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              InspectionParameterSourceType,
            ),
          ) as InspectionParameterSourceType?;
          if (valueDes == null) continue;
          result.sourceType = valueDes;
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
  CreateInspectionParameterRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInspectionParameterRequestBuilder();
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
