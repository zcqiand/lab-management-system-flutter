//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/contract_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contract.g.dart';

/// Contract
///
/// Properties:
/// * [id]
/// * [tenantId]
/// * [contractCode]
/// * [clientUnit]
/// * [projectName]
/// * [projectLocation]
/// * [constructionUnit]
/// * [inspectionSpecialtyCode]
/// * [buildingUnit]
/// * [supervisorUnit]
/// * [inspectionPerson]
/// * [inspectionPhone]
/// * [witnessUnit]
/// * [witness]
/// * [witnessPhone]
/// * [contactPerson]
/// * [contactPhone]
/// * [entrustedDate]
/// * [status]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Contract implements Built<Contract, ContractBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'tenantId')
  String get tenantId;

  @BuiltValueField(wireName: r'contractCode')
  String get contractCode;

  @BuiltValueField(wireName: r'clientUnit')
  String get clientUnit;

  @BuiltValueField(wireName: r'projectName')
  String get projectName;

  @BuiltValueField(wireName: r'projectLocation')
  String? get projectLocation;

  @BuiltValueField(wireName: r'constructionUnit')
  String get constructionUnit;

  @BuiltValueField(wireName: r'inspectionSpecialtyCode')
  String? get inspectionSpecialtyCode;

  @BuiltValueField(wireName: r'buildingUnit')
  String? get buildingUnit;

  @BuiltValueField(wireName: r'supervisorUnit')
  String? get supervisorUnit;

  @BuiltValueField(wireName: r'inspectionPerson')
  String? get inspectionPerson;

  @BuiltValueField(wireName: r'inspectionPhone')
  String? get inspectionPhone;

  @BuiltValueField(wireName: r'witnessUnit')
  String get witnessUnit;

  @BuiltValueField(wireName: r'witness')
  String get witness;

  @BuiltValueField(wireName: r'witnessPhone')
  String? get witnessPhone;

  @BuiltValueField(wireName: r'contactPerson')
  String? get contactPerson;

  @BuiltValueField(wireName: r'contactPhone')
  String? get contactPhone;

  @BuiltValueField(wireName: r'entrustedDate')
  String? get entrustedDate;

  @BuiltValueField(wireName: r'status')
  ContractStatus get status;
  // enum statusEnum {  active,  archived,  };

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  Contract._();

  factory Contract([void updates(ContractBuilder b)]) = _$Contract;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContractBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Contract> get serializer => _$ContractSerializer();
}

class _$ContractSerializer implements PrimitiveSerializer<Contract> {
  @override
  final Iterable<Type> types = const [Contract, _$Contract];

  @override
  final String wireName = r'Contract';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Contract object, {
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
    yield r'contractCode';
    yield serializers.serialize(
      object.contractCode,
      specifiedType: const FullType(String),
    );
    yield r'clientUnit';
    yield serializers.serialize(
      object.clientUnit,
      specifiedType: const FullType(String),
    );
    yield r'projectName';
    yield serializers.serialize(
      object.projectName,
      specifiedType: const FullType(String),
    );
    if (object.projectLocation != null) {
      yield r'projectLocation';
      yield serializers.serialize(
        object.projectLocation,
        specifiedType: const FullType(String),
      );
    }
    yield r'constructionUnit';
    yield serializers.serialize(
      object.constructionUnit,
      specifiedType: const FullType(String),
    );
    if (object.inspectionSpecialtyCode != null) {
      yield r'inspectionSpecialtyCode';
      yield serializers.serialize(
        object.inspectionSpecialtyCode,
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
    if (object.inspectionPerson != null) {
      yield r'inspectionPerson';
      yield serializers.serialize(
        object.inspectionPerson,
        specifiedType: const FullType(String),
      );
    }
    if (object.inspectionPhone != null) {
      yield r'inspectionPhone';
      yield serializers.serialize(
        object.inspectionPhone,
        specifiedType: const FullType(String),
      );
    }
    yield r'witnessUnit';
    yield serializers.serialize(
      object.witnessUnit,
      specifiedType: const FullType(String),
    );
    yield r'witness';
    yield serializers.serialize(
      object.witness,
      specifiedType: const FullType(String),
    );
    if (object.witnessPhone != null) {
      yield r'witnessPhone';
      yield serializers.serialize(
        object.witnessPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPerson != null) {
      yield r'contactPerson';
      yield serializers.serialize(
        object.contactPerson,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPhone != null) {
      yield r'contactPhone';
      yield serializers.serialize(
        object.contactPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.entrustedDate != null) {
      yield r'entrustedDate';
      yield serializers.serialize(
        object.entrustedDate,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ContractStatus),
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
    Contract object, {
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
    required ContractBuilder result,
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
        case r'contractCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contractCode = valueDes;
          break;
        case r'clientUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientUnit = valueDes;
          break;
        case r'projectName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectName = valueDes;
          break;
        case r'projectLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.projectLocation = valueDes;
          break;
        case r'constructionUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.constructionUnit = valueDes;
          break;
        case r'inspectionSpecialtyCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectionSpecialtyCode = valueDes;
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
        case r'inspectionPerson':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectionPerson = valueDes;
          break;
        case r'inspectionPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectionPhone = valueDes;
          break;
        case r'witnessUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.witnessUnit = valueDes;
          break;
        case r'witness':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        case r'contactPerson':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPerson = valueDes;
          break;
        case r'contactPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPhone = valueDes;
          break;
        case r'entrustedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entrustedDate = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContractStatus),
          ) as ContractStatus;
          result.status = valueDes;
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
  Contract deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContractBuilder();
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
