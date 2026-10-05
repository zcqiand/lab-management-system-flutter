//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:lab_management_system_flutter/generated/model/summary_column.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_data.g.dart';

/// SummaryData
///
/// Properties:
/// * [summaryName]
/// * [columns]
/// * [rows]
@BuiltValue()
abstract class SummaryData implements Built<SummaryData, SummaryDataBuilder> {
  @BuiltValueField(wireName: r'summaryName')
  String get summaryName;

  @BuiltValueField(wireName: r'columns')
  BuiltList<SummaryColumn> get columns;

  @BuiltValueField(wireName: r'rows')
  BuiltList<BuiltMap<String, String>> get rows;

  SummaryData._();

  factory SummaryData([void updates(SummaryDataBuilder b)]) = _$SummaryData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryData> get serializer => _$SummaryDataSerializer();
}

class _$SummaryDataSerializer implements PrimitiveSerializer<SummaryData> {
  @override
  final Iterable<Type> types = const [SummaryData, _$SummaryData];

  @override
  final String wireName = r'SummaryData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'summaryName';
    yield serializers.serialize(
      object.summaryName,
      specifiedType: const FullType(String),
    );
    yield r'columns';
    yield serializers.serialize(
      object.columns,
      specifiedType: const FullType(BuiltList, [FullType(SummaryColumn)]),
    );
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(BuiltList, [
        FullType(BuiltMap, [FullType(String), FullType(String)]),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryData object, {
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
    required SummaryDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'summaryName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.summaryName = valueDes;
          break;
        case r'columns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SummaryColumn)]),
          ) as BuiltList<SummaryColumn>;
          result.columns.replace(valueDes);
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(BuiltMap, [FullType(String), FullType(String)]),
            ]),
          ) as BuiltList<BuiltMap<String, String>>;
          result.rows.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummaryData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryDataBuilder();
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
