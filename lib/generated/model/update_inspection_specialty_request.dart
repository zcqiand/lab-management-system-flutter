//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_inspection_specialty_request.g.dart';

/// UpdateInspectionSpecialtyRequest
///
/// Properties:
/// * [officialNo]
/// * [name]
/// * [isOfficial]
/// * [enabled]
/// * [sortOrder]
@BuiltValue()
abstract class UpdateInspectionSpecialtyRequest
    implements
        Built<
          UpdateInspectionSpecialtyRequest,
          UpdateInspectionSpecialtyRequestBuilder
        > {
  @BuiltValueField(wireName: r'officialNo')
  String? get officialNo;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'isOfficial')
  bool? get isOfficial;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'sortOrder')
  int? get sortOrder;

  UpdateInspectionSpecialtyRequest._();

  factory UpdateInspectionSpecialtyRequest([
    void updates(UpdateInspectionSpecialtyRequestBuilder b),
  ]) = _$UpdateInspectionSpecialtyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateInspectionSpecialtyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateInspectionSpecialtyRequest> get serializer =>
      _$UpdateInspectionSpecialtyRequestSerializer();
}

class _$UpdateInspectionSpecialtyRequestSerializer
    implements PrimitiveSerializer<UpdateInspectionSpecialtyRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateInspectionSpecialtyRequest,
    _$UpdateInspectionSpecialtyRequest,
  ];

  @override
  final String wireName = r'UpdateInspectionSpecialtyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateInspectionSpecialtyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.officialNo != null) {
      yield r'officialNo';
      yield serializers.serialize(
        object.officialNo,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.isOfficial != null) {
      yield r'isOfficial';
      yield serializers.serialize(
        object.isOfficial,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
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
    UpdateInspectionSpecialtyRequest object, {
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
    required UpdateInspectionSpecialtyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'officialNo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.officialNo = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'isOfficial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOfficial = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
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
  UpdateInspectionSpecialtyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateInspectionSpecialtyRequestBuilder();
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
