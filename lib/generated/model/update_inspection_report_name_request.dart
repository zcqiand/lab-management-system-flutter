//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/ext_field_def.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_inspection_report_name_request.g.dart';

/// UpdateInspectionReportNameRequest
///
/// Properties:
/// * [name]
/// * [fullName]
/// * [templatePath]
/// * [summaryName]
/// * [extFields]
/// * [description]
/// * [sortOrder]
@BuiltValue()
abstract class UpdateInspectionReportNameRequest
    implements
        Built<
          UpdateInspectionReportNameRequest,
          UpdateInspectionReportNameRequestBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'fullName')
  String? get fullName;

  @BuiltValueField(wireName: r'templatePath')
  String? get templatePath;

  @BuiltValueField(wireName: r'summaryName')
  String? get summaryName;

  @BuiltValueField(wireName: r'extFields')
  BuiltList<ExtFieldDef>? get extFields;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  UpdateInspectionReportNameRequest._();

  factory UpdateInspectionReportNameRequest([
    void updates(UpdateInspectionReportNameRequestBuilder b),
  ]) = _$UpdateInspectionReportNameRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateInspectionReportNameRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateInspectionReportNameRequest> get serializer =>
      _$UpdateInspectionReportNameRequestSerializer();
}

class _$UpdateInspectionReportNameRequestSerializer
    implements PrimitiveSerializer<UpdateInspectionReportNameRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateInspectionReportNameRequest,
    _$UpdateInspectionReportNameRequest,
  ];

  @override
  final String wireName = r'UpdateInspectionReportNameRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateInspectionReportNameRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullName != null) {
      yield r'fullName';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType(String),
      );
    }
    if (object.templatePath != null) {
      yield r'templatePath';
      yield serializers.serialize(
        object.templatePath,
        specifiedType: const FullType(String),
      );
    }
    if (object.summaryName != null) {
      yield r'summaryName';
      yield serializers.serialize(
        object.summaryName,
        specifiedType: const FullType(String),
      );
    }
    if (object.extFields != null) {
      yield r'extFields';
      yield serializers.serialize(
        object.extFields,
        specifiedType: const FullType(BuiltList, [FullType(ExtFieldDef)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
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
    UpdateInspectionReportNameRequest object, {
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
    required UpdateInspectionReportNameRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullName = valueDes;
          break;
        case r'templatePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.templatePath = valueDes;
          break;
        case r'summaryName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.summaryName = valueDes;
          break;
        case r'extFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(ExtFieldDef),
            ]),
          ) as BuiltList<ExtFieldDef>?;
          if (valueDes == null) continue;
          result.extFields.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
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
  UpdateInspectionReportNameRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateInspectionReportNameRequestBuilder();
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
