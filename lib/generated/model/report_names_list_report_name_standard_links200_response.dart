//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/report_name_standard_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_names_list_report_name_standard_links200_response.g.dart';

/// ReportNamesListReportNameStandardLinks200Response
///
/// Properties:
/// * [items]
/// * [page]
/// * [pageSize]
/// * [total]
@BuiltValue()
abstract class ReportNamesListReportNameStandardLinks200Response
    implements
        Built<
          ReportNamesListReportNameStandardLinks200Response,
          ReportNamesListReportNameStandardLinks200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<ReportNameStandardLink> get items;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'total')
  int get total;

  ReportNamesListReportNameStandardLinks200Response._();

  factory ReportNamesListReportNameStandardLinks200Response([
    void updates(ReportNamesListReportNameStandardLinks200ResponseBuilder b),
  ]) = _$ReportNamesListReportNameStandardLinks200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ReportNamesListReportNameStandardLinks200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportNamesListReportNameStandardLinks200Response>
  get serializer =>
      _$ReportNamesListReportNameStandardLinks200ResponseSerializer();
}

class _$ReportNamesListReportNameStandardLinks200ResponseSerializer
    implements
        PrimitiveSerializer<ReportNamesListReportNameStandardLinks200Response> {
  @override
  final Iterable<Type> types = const [
    ReportNamesListReportNameStandardLinks200Response,
    _$ReportNamesListReportNameStandardLinks200Response,
  ];

  @override
  final String wireName = r'ReportNamesListReportNameStandardLinks200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportNamesListReportNameStandardLinks200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [
        FullType(ReportNameStandardLink),
      ]),
    );
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'pageSize';
    yield serializers.serialize(
      object.pageSize,
      specifiedType: const FullType(int),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportNamesListReportNameStandardLinks200Response object, {
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
    required ReportNamesListReportNameStandardLinks200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(ReportNameStandardLink),
            ]),
          ) as BuiltList<ReportNameStandardLink>;
          result.items.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportNamesListReportNameStandardLinks200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportNamesListReportNameStandardLinks200ResponseBuilder();
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
