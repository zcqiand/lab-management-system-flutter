//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/model/receipt_result.dart';
import 'package:lab_management_system_flutter/generated/model/flow_history_entry.dart';
import 'package:lab_management_system_flutter/generated/model/flow_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_receipt.g.dart';

/// SampleReceipt
///
/// Properties:
/// * [id]
/// * [tenantId]
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
/// * [flowStatus]
/// * [flowHistory]
/// * [lastSubmittedBy]
/// * [assigneeId]
/// * [assigneeName]
/// * [plannedTestDate]
/// * [reportCode]
/// * [reportDate]
/// * [conclusion]
/// * [result]
/// * [issuedAt]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class SampleReceipt
    implements Built<SampleReceipt, SampleReceiptBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenantId')
  String get tenantId;

  @BuiltValueField(wireName: r'contractId')
  String get contractId;

  @BuiltValueField(wireName: r'commissionCode')
  String get commissionCode;

  @BuiltValueField(wireName: r'commissionDate')
  String get commissionDate;

  @BuiltValueField(wireName: r'commissionRegisterCode')
  String? get commissionRegisterCode;

  @BuiltValueField(wireName: r'commissionRegisterDate')
  String? get commissionRegisterDate;

  @BuiltValueField(wireName: r'categoryCode')
  String get categoryCode;

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
  String get receivedBy;

  @BuiltValueField(wireName: r'sampleSource')
  String get sampleSource;

  @BuiltValueField(wireName: r'testCategory')
  String get testCategory;

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

  @BuiltValueField(wireName: r'flowStatus')
  FlowStatus get flowStatus;
  // enum flowStatusEnum {  receiving,  task_assignment,  data_entry,  review,  approval,  issuance,  archived,  completed,  };

  @BuiltValueField(wireName: r'flowHistory')
  BuiltList<FlowHistoryEntry> get flowHistory;

  @BuiltValueField(wireName: r'lastSubmittedBy')
  String? get lastSubmittedBy;

  @BuiltValueField(wireName: r'assigneeId')
  String? get assigneeId;

  @BuiltValueField(wireName: r'assigneeName')
  String? get assigneeName;

  @BuiltValueField(wireName: r'plannedTestDate')
  String? get plannedTestDate;

  @BuiltValueField(wireName: r'reportCode')
  String? get reportCode;

  @BuiltValueField(wireName: r'reportDate')
  String? get reportDate;

  @BuiltValueField(wireName: r'conclusion')
  String? get conclusion;

  @BuiltValueField(wireName: r'result')
  ReceiptResult? get result;
  // enum resultEnum {  pass,  fail,  ,  };

  @BuiltValueField(wireName: r'issuedAt')
  String? get issuedAt;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  SampleReceipt._();

  factory SampleReceipt([void updates(SampleReceiptBuilder b)]) =
      _$SampleReceipt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleReceiptBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleReceipt> get serializer =>
      _$SampleReceiptSerializer();
}

class _$SampleReceiptSerializer implements PrimitiveSerializer<SampleReceipt> {
  @override
  final Iterable<Type> types = const [SampleReceipt, _$SampleReceipt];

  @override
  final String wireName = r'SampleReceipt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleReceipt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tenantId';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(String),
    );
    yield r'contractId';
    yield serializers.serialize(
      object.contractId,
      specifiedType: const FullType(String),
    );
    yield r'commissionCode';
    yield serializers.serialize(
      object.commissionCode,
      specifiedType: const FullType(String),
    );
    yield r'commissionDate';
    yield serializers.serialize(
      object.commissionDate,
      specifiedType: const FullType(String),
    );
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
    yield r'categoryCode';
    yield serializers.serialize(
      object.categoryCode,
      specifiedType: const FullType(String),
    );
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
    yield r'receivedBy';
    yield serializers.serialize(
      object.receivedBy,
      specifiedType: const FullType(String),
    );
    yield r'sampleSource';
    yield serializers.serialize(
      object.sampleSource,
      specifiedType: const FullType(String),
    );
    yield r'testCategory';
    yield serializers.serialize(
      object.testCategory,
      specifiedType: const FullType(String),
    );
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
    yield r'flowStatus';
    yield serializers.serialize(
      object.flowStatus,
      specifiedType: const FullType(FlowStatus),
    );
    yield r'flowHistory';
    yield serializers.serialize(
      object.flowHistory,
      specifiedType: const FullType(BuiltList, [FullType(FlowHistoryEntry)]),
    );
    if (object.lastSubmittedBy != null) {
      yield r'lastSubmittedBy';
      yield serializers.serialize(
        object.lastSubmittedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.assigneeId != null) {
      yield r'assigneeId';
      yield serializers.serialize(
        object.assigneeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.assigneeName != null) {
      yield r'assigneeName';
      yield serializers.serialize(
        object.assigneeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.plannedTestDate != null) {
      yield r'plannedTestDate';
      yield serializers.serialize(
        object.plannedTestDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.reportCode != null) {
      yield r'reportCode';
      yield serializers.serialize(
        object.reportCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.reportDate != null) {
      yield r'reportDate';
      yield serializers.serialize(
        object.reportDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.conclusion != null) {
      yield r'conclusion';
      yield serializers.serialize(
        object.conclusion,
        specifiedType: const FullType(String),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(ReceiptResult),
      );
    }
    if (object.issuedAt != null) {
      yield r'issuedAt';
      yield serializers.serialize(
        object.issuedAt,
        specifiedType: const FullType(String),
      );
    }
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
    SampleReceipt object, {
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
    required SampleReceiptBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenantId = valueDes;
          break;
        case r'contractId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contractId = valueDes;
          break;
        case r'commissionCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commissionCode = valueDes;
          break;
        case r'commissionDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType(String),
          ) as String;
          result.receivedBy = valueDes;
          break;
        case r'sampleSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sampleSource = valueDes;
          break;
        case r'testCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        case r'flowStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowStatus),
          ) as FlowStatus;
          result.flowStatus = valueDes;
          break;
        case r'flowHistory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(FlowHistoryEntry),
            ]),
          ) as BuiltList<FlowHistoryEntry>;
          result.flowHistory.replace(valueDes);
          break;
        case r'lastSubmittedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastSubmittedBy = valueDes;
          break;
        case r'assigneeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assigneeId = valueDes;
          break;
        case r'assigneeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assigneeName = valueDes;
          break;
        case r'plannedTestDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.plannedTestDate = valueDes;
          break;
        case r'reportCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportCode = valueDes;
          break;
        case r'reportDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reportDate = valueDes;
          break;
        case r'conclusion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.conclusion = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReceiptResult),
          ) as ReceiptResult?;
          if (valueDes == null) continue;
          result.result = valueDes;
          break;
        case r'issuedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issuedAt = valueDes;
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
  SampleReceipt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleReceiptBuilder();
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
