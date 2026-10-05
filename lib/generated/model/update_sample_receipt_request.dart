//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_sample_receipt_request.g.dart';

/// UpdateSampleReceiptRequest
///
/// Properties:
/// * [contractId]
/// * [commissionCode]
/// * [commissionDate]
/// * [commissionRegisterCode]
/// * [commissionRegisterDate]
/// * [categoryCode]
/// * [projectName]
/// * [clientUnit]
/// * [buildingUnit]
/// * [supervisorUnit]
/// * [constructionUnit]
/// * [witnessUnit]
/// * [samplingLocation]
/// * [witness]
/// * [witnessPhone]
/// * [inspector]
/// * [inspectorPhone]
/// * [receivedBy]
/// * [sampleSource]
/// * [testCategory]
/// * [testEnvironment]
/// * [mainEquipment]
/// * [testOperator]
/// * [testStartDate]
/// * [testEndDate]
/// * [originalRecordNo]
/// * [remark]
/// * [judgmentBasis]
/// * [testingBasis]
/// * [testParameters]
@BuiltValue()
abstract class UpdateSampleReceiptRequest
    implements
        Built<UpdateSampleReceiptRequest, UpdateSampleReceiptRequestBuilder> {
  @BuiltValueField(wireName: r'contractId')
  String? get contractId;

  @BuiltValueField(wireName: r'commissionCode')
  String? get commissionCode;

  @BuiltValueField(wireName: r'commissionDate')
  String? get commissionDate;

  @BuiltValueField(wireName: r'commissionRegisterCode')
  String? get commissionRegisterCode;

  @BuiltValueField(wireName: r'commissionRegisterDate')
  String? get commissionRegisterDate;

  @BuiltValueField(wireName: r'categoryCode')
  String? get categoryCode;

  @BuiltValueField(wireName: r'projectName')
  String? get projectName;

  @BuiltValueField(wireName: r'clientUnit')
  String? get clientUnit;

  @BuiltValueField(wireName: r'buildingUnit')
  String? get buildingUnit;

  @BuiltValueField(wireName: r'supervisorUnit')
  String? get supervisorUnit;

  @BuiltValueField(wireName: r'constructionUnit')
  String? get constructionUnit;

  @BuiltValueField(wireName: r'witnessUnit')
  String? get witnessUnit;

  @BuiltValueField(wireName: r'samplingLocation')
  String? get samplingLocation;

  @BuiltValueField(wireName: r'witness')
  String? get witness;

  @BuiltValueField(wireName: r'witnessPhone')
  String? get witnessPhone;

  @BuiltValueField(wireName: r'inspector')
  String? get inspector;

  @BuiltValueField(wireName: r'inspectorPhone')
  String? get inspectorPhone;

  @BuiltValueField(wireName: r'receivedBy')
  String? get receivedBy;

  @BuiltValueField(wireName: r'sampleSource')
  String? get sampleSource;

  @BuiltValueField(wireName: r'testCategory')
  String? get testCategory;

  @BuiltValueField(wireName: r'testEnvironment')
  String? get testEnvironment;

  @BuiltValueField(wireName: r'mainEquipment')
  String? get mainEquipment;

  @BuiltValueField(wireName: r'testOperator')
  String? get testOperator;

  @BuiltValueField(wireName: r'testStartDate')
  String? get testStartDate;

  @BuiltValueField(wireName: r'testEndDate')
  String? get testEndDate;

  @BuiltValueField(wireName: r'originalRecordNo')
  String? get originalRecordNo;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  @BuiltValueField(wireName: r'judgmentBasis')
  BuiltList<String>? get judgmentBasis;

  @BuiltValueField(wireName: r'testingBasis')
  BuiltList<String>? get testingBasis;

  @BuiltValueField(wireName: r'testParameters')
  BuiltList<String>? get testParameters;

  UpdateSampleReceiptRequest._();

  factory UpdateSampleReceiptRequest([
    void updates(UpdateSampleReceiptRequestBuilder b),
  ]) = _$UpdateSampleReceiptRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSampleReceiptRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSampleReceiptRequest> get serializer =>
      _$UpdateSampleReceiptRequestSerializer();
}

class _$UpdateSampleReceiptRequestSerializer
    implements PrimitiveSerializer<UpdateSampleReceiptRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateSampleReceiptRequest,
    _$UpdateSampleReceiptRequest,
  ];

  @override
  final String wireName = r'UpdateSampleReceiptRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSampleReceiptRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.contractId != null) {
      yield r'contractId';
      yield serializers.serialize(
        object.contractId,
        specifiedType: const FullType(String),
      );
    }
    if (object.commissionCode != null) {
      yield r'commissionCode';
      yield serializers.serialize(
        object.commissionCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.commissionDate != null) {
      yield r'commissionDate';
      yield serializers.serialize(
        object.commissionDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.commissionRegisterCode != null) {
      yield r'commissionRegisterCode';
      yield serializers.serialize(
        object.commissionRegisterCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.commissionRegisterDate != null) {
      yield r'commissionRegisterDate';
      yield serializers.serialize(
        object.commissionRegisterDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.categoryCode != null) {
      yield r'categoryCode';
      yield serializers.serialize(
        object.categoryCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectName != null) {
      yield r'projectName';
      yield serializers.serialize(
        object.projectName,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientUnit != null) {
      yield r'clientUnit';
      yield serializers.serialize(
        object.clientUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.buildingUnit != null) {
      yield r'buildingUnit';
      yield serializers.serialize(
        object.buildingUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.supervisorUnit != null) {
      yield r'supervisorUnit';
      yield serializers.serialize(
        object.supervisorUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.constructionUnit != null) {
      yield r'constructionUnit';
      yield serializers.serialize(
        object.constructionUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.witnessUnit != null) {
      yield r'witnessUnit';
      yield serializers.serialize(
        object.witnessUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.samplingLocation != null) {
      yield r'samplingLocation';
      yield serializers.serialize(
        object.samplingLocation,
        specifiedType: const FullType(String),
      );
    }
    if (object.witness != null) {
      yield r'witness';
      yield serializers.serialize(
        object.witness,
        specifiedType: const FullType(String),
      );
    }
    if (object.witnessPhone != null) {
      yield r'witnessPhone';
      yield serializers.serialize(
        object.witnessPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.inspector != null) {
      yield r'inspector';
      yield serializers.serialize(
        object.inspector,
        specifiedType: const FullType(String),
      );
    }
    if (object.inspectorPhone != null) {
      yield r'inspectorPhone';
      yield serializers.serialize(
        object.inspectorPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.receivedBy != null) {
      yield r'receivedBy';
      yield serializers.serialize(
        object.receivedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.sampleSource != null) {
      yield r'sampleSource';
      yield serializers.serialize(
        object.sampleSource,
        specifiedType: const FullType(String),
      );
    }
    if (object.testCategory != null) {
      yield r'testCategory';
      yield serializers.serialize(
        object.testCategory,
        specifiedType: const FullType(String),
      );
    }
    if (object.testEnvironment != null) {
      yield r'testEnvironment';
      yield serializers.serialize(
        object.testEnvironment,
        specifiedType: const FullType(String),
      );
    }
    if (object.mainEquipment != null) {
      yield r'mainEquipment';
      yield serializers.serialize(
        object.mainEquipment,
        specifiedType: const FullType(String),
      );
    }
    if (object.testOperator != null) {
      yield r'testOperator';
      yield serializers.serialize(
        object.testOperator,
        specifiedType: const FullType(String),
      );
    }
    if (object.testStartDate != null) {
      yield r'testStartDate';
      yield serializers.serialize(
        object.testStartDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.testEndDate != null) {
      yield r'testEndDate';
      yield serializers.serialize(
        object.testEndDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.originalRecordNo != null) {
      yield r'originalRecordNo';
      yield serializers.serialize(
        object.originalRecordNo,
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
    if (object.judgmentBasis != null) {
      yield r'judgmentBasis';
      yield serializers.serialize(
        object.judgmentBasis,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.testingBasis != null) {
      yield r'testingBasis';
      yield serializers.serialize(
        object.testingBasis,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.testParameters != null) {
      yield r'testParameters';
      yield serializers.serialize(
        object.testParameters,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateSampleReceiptRequest object, {
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
    required UpdateSampleReceiptRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contractId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contractId = valueDes;
          break;
        case r'commissionCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commissionCode = valueDes;
          break;
        case r'commissionDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commissionDate = valueDes;
          break;
        case r'commissionRegisterCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commissionRegisterCode = valueDes;
          break;
        case r'commissionRegisterDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commissionRegisterDate = valueDes;
          break;
        case r'categoryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.categoryCode = valueDes;
          break;
        case r'projectName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectName = valueDes;
          break;
        case r'clientUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.clientUnit = valueDes;
          break;
        case r'buildingUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buildingUnit = valueDes;
          break;
        case r'supervisorUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.supervisorUnit = valueDes;
          break;
        case r'constructionUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.constructionUnit = valueDes;
          break;
        case r'witnessUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.witnessUnit = valueDes;
          break;
        case r'samplingLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.samplingLocation = valueDes;
          break;
        case r'witness':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.witness = valueDes;
          break;
        case r'witnessPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.witnessPhone = valueDes;
          break;
        case r'inspector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspector = valueDes;
          break;
        case r'inspectorPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectorPhone = valueDes;
          break;
        case r'receivedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.receivedBy = valueDes;
          break;
        case r'sampleSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sampleSource = valueDes;
          break;
        case r'testCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testCategory = valueDes;
          break;
        case r'testEnvironment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testEnvironment = valueDes;
          break;
        case r'mainEquipment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mainEquipment = valueDes;
          break;
        case r'testOperator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testOperator = valueDes;
          break;
        case r'testStartDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testStartDate = valueDes;
          break;
        case r'testEndDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testEndDate = valueDes;
          break;
        case r'originalRecordNo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originalRecordNo = valueDes;
          break;
        case r'remark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remark = valueDes;
          break;
        case r'judgmentBasis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.judgmentBasis.replace(valueDes);
          break;
        case r'testingBasis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.testingBasis.replace(valueDes);
          break;
        case r'testParameters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.testParameters.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateSampleReceiptRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSampleReceiptRequestBuilder();
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
