//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_catalog_entry_request.g.dart';

/// CreateCatalogEntryRequest
///
/// Properties:
/// * [code]
/// * [inspectionObjectCode]
/// * [name]
/// * [remark]
/// * [sortOrder]
@BuiltValue()
abstract class CreateCatalogEntryRequest
    implements
        Built<CreateCatalogEntryRequest, CreateCatalogEntryRequestBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'inspectionObjectCode')
  String? get inspectionObjectCode;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'remark')
  String? get remark;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  CreateCatalogEntryRequest._();

  factory CreateCatalogEntryRequest([
    void updates(CreateCatalogEntryRequestBuilder b),
  ]) = _$CreateCatalogEntryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCatalogEntryRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCatalogEntryRequest> get serializer =>
      _$CreateCatalogEntryRequestSerializer();
}

class _$CreateCatalogEntryRequestSerializer
    implements PrimitiveSerializer<CreateCatalogEntryRequest> {
  @override
  final Iterable<Type> types = const [
    CreateCatalogEntryRequest,
    _$CreateCatalogEntryRequest,
  ];

  @override
  final String wireName = r'CreateCatalogEntryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCatalogEntryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.inspectionObjectCode != null) {
      yield r'inspectionObjectCode';
      yield serializers.serialize(
        object.inspectionObjectCode,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.remark != null) {
      yield r'remark';
      yield serializers.serialize(
        object.remark,
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
    CreateCatalogEntryRequest object, {
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
    required CreateCatalogEntryRequestBuilder result,
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
        case r'inspectionObjectCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectionObjectCode = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'remark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remark = valueDes;
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
  CreateCatalogEntryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCatalogEntryRequestBuilder();
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
