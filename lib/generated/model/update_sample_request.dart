//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_sample_request.g.dart';

/// UpdateSampleRequest
///
/// Properties:
/// * [receiptId]
/// * [sampleCode]
/// * [sampleName]
/// * [model]
/// * [specification]
/// * [grade]
/// * [brand]
/// * [manufacturer]
/// * [structuralPart]
/// * [representQuantity]
/// * [sampleQuantity]
/// * [batchNumber]
/// * [supplyUnit]
/// * [arrivalDate]
/// * [samplingDate]
/// * [curingCondition]
/// * [age]
/// * [ext]
/// * [remark]
@BuiltValue()
abstract class UpdateSampleRequest
    implements Built<UpdateSampleRequest, UpdateSampleRequestBuilder> {
  @BuiltValueField(wireName: r'receiptId')
  String? get receiptId;

  @BuiltValueField(wireName: r'sampleCode')
  String? get sampleCode;

  @BuiltValueField(wireName: r'sampleName')
  String? get sampleName;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'specification')
  String? get specification;

  @BuiltValueField(wireName: r'grade')
  String? get grade;

  @BuiltValueField(wireName: r'brand')
  String? get brand;

  @BuiltValueField(wireName: r'manufacturer')
  String? get manufacturer;

  @BuiltValueField(wireName: r'structuralPart')
  String? get structuralPart;

  @BuiltValueField(wireName: r'representQuantity')
  String? get representQuantity;

  @BuiltValueField(wireName: r'sampleQuantity')
  String? get sampleQuantity;

  @BuiltValueField(wireName: r'batchNumber')
  String? get batchNumber;

  @BuiltValueField(wireName: r'supplyUnit')
  String? get supplyUnit;

  @BuiltValueField(wireName: r'arrivalDate')
  String? get arrivalDate;

  @BuiltValueField(wireName: r'samplingDate')
  String? get samplingDate;

  @BuiltValueField(wireName: r'curingCondition')
  String? get curingCondition;

  @BuiltValueField(wireName: r'age')
  String? get age;

  @BuiltValueField(wireName: r'ext')
  BuiltMap<String, String>? get ext;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  UpdateSampleRequest._();

  factory UpdateSampleRequest([void updates(UpdateSampleRequestBuilder b)]) =
      _$UpdateSampleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSampleRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSampleRequest> get serializer =>
      _$UpdateSampleRequestSerializer();
}

class _$UpdateSampleRequestSerializer
    implements PrimitiveSerializer<UpdateSampleRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateSampleRequest,
    _$UpdateSampleRequest,
  ];

  @override
  final String wireName = r'UpdateSampleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSampleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.receiptId != null) {
      yield r'receiptId';
      yield serializers.serialize(
        object.receiptId,
        specifiedType: const FullType(String),
      );
    }
    if (object.sampleCode != null) {
      yield r'sampleCode';
      yield serializers.serialize(
        object.sampleCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.sampleName != null) {
      yield r'sampleName';
      yield serializers.serialize(
        object.sampleName,
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
    if (object.specification != null) {
      yield r'specification';
      yield serializers.serialize(
        object.specification,
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
    if (object.brand != null) {
      yield r'brand';
      yield serializers.serialize(
        object.brand,
        specifiedType: const FullType(String),
      );
    }
    if (object.manufacturer != null) {
      yield r'manufacturer';
      yield serializers.serialize(
        object.manufacturer,
        specifiedType: const FullType(String),
      );
    }
    if (object.structuralPart != null) {
      yield r'structuralPart';
      yield serializers.serialize(
        object.structuralPart,
        specifiedType: const FullType(String),
      );
    }
    if (object.representQuantity != null) {
      yield r'representQuantity';
      yield serializers.serialize(
        object.representQuantity,
        specifiedType: const FullType(String),
      );
    }
    if (object.sampleQuantity != null) {
      yield r'sampleQuantity';
      yield serializers.serialize(
        object.sampleQuantity,
        specifiedType: const FullType(String),
      );
    }
    if (object.batchNumber != null) {
      yield r'batchNumber';
      yield serializers.serialize(
        object.batchNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.supplyUnit != null) {
      yield r'supplyUnit';
      yield serializers.serialize(
        object.supplyUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.arrivalDate != null) {
      yield r'arrivalDate';
      yield serializers.serialize(
        object.arrivalDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.samplingDate != null) {
      yield r'samplingDate';
      yield serializers.serialize(
        object.samplingDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.curingCondition != null) {
      yield r'curingCondition';
      yield serializers.serialize(
        object.curingCondition,
        specifiedType: const FullType(String),
      );
    }
    if (object.age != null) {
      yield r'age';
      yield serializers.serialize(
        object.age,
        specifiedType: const FullType(String),
      );
    }
    if (object.ext != null) {
      yield r'ext';
      yield serializers.serialize(
        object.ext,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.remark != null) {
      yield r'remark';
      yield serializers.serialize(
        object.remark,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateSampleRequest object, {
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
    required UpdateSampleRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'receiptId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.receiptId = valueDes;
          break;
        case r'sampleCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sampleCode = valueDes;
          break;
        case r'sampleName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sampleName = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'specification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.specification = valueDes;
          break;
        case r'grade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.grade = valueDes;
          break;
        case r'brand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.brand = valueDes;
          break;
        case r'manufacturer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manufacturer = valueDes;
          break;
        case r'structuralPart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.structuralPart = valueDes;
          break;
        case r'representQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.representQuantity = valueDes;
          break;
        case r'sampleQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sampleQuantity = valueDes;
          break;
        case r'batchNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.batchNumber = valueDes;
          break;
        case r'supplyUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supplyUnit = valueDes;
          break;
        case r'arrivalDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.arrivalDate = valueDes;
          break;
        case r'samplingDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.samplingDate = valueDes;
          break;
        case r'curingCondition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.curingCondition = valueDes;
          break;
        case r'age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.age = valueDes;
          break;
        case r'ext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.ext.replace(valueDes);
          break;
        case r'remark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remark = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateSampleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSampleRequestBuilder();
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
