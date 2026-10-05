// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QualificationLevel _$QUALIFIED = const QualificationLevel._('QUALIFIED');
const QualificationLevel _$RESTRICTED = const QualificationLevel._(
  'RESTRICTED',
);

QualificationLevel _$valueOf(String name) {
  switch (name) {
    case 'QUALIFIED':
      return _$QUALIFIED;
    case 'RESTRICTED':
      return _$RESTRICTED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QualificationLevel> _$values = BuiltSet<QualificationLevel>(
  const <QualificationLevel>[_$QUALIFIED, _$RESTRICTED],
);

Serializer<QualificationLevel> _$qualificationLevelSerializer =
    _$QualificationLevelSerializer();

class _$QualificationLevelSerializer
    implements PrimitiveSerializer<QualificationLevel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'QUALIFIED': 'QUALIFIED',
    'RESTRICTED': 'RESTRICTED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'QUALIFIED': 'QUALIFIED',
    'RESTRICTED': 'RESTRICTED',
  };

  @override
  final Iterable<Type> types = const <Type>[QualificationLevel];
  @override
  final String wireName = 'QualificationLevel';

  @override
  Object serialize(
    Serializers serializers,
    QualificationLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  QualificationLevel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => QualificationLevel.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
