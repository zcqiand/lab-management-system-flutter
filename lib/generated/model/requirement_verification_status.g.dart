// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement_verification_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RequirementVerificationStatus _$draft =
    const RequirementVerificationStatus._('draft');
const RequirementVerificationStatus _$reviewed =
    const RequirementVerificationStatus._('reviewed');
const RequirementVerificationStatus _$verified =
    const RequirementVerificationStatus._('verified');
const RequirementVerificationStatus _$rejected =
    const RequirementVerificationStatus._('rejected');

RequirementVerificationStatus _$valueOf(String name) {
  switch (name) {
    case 'draft':
      return _$draft;
    case 'reviewed':
      return _$reviewed;
    case 'verified':
      return _$verified;
    case 'rejected':
      return _$rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RequirementVerificationStatus> _$values =
    BuiltSet<RequirementVerificationStatus>(
      const <RequirementVerificationStatus>[
        _$draft,
        _$reviewed,
        _$verified,
        _$rejected,
      ],
    );

Serializer<RequirementVerificationStatus>
_$requirementVerificationStatusSerializer =
    _$RequirementVerificationStatusSerializer();

class _$RequirementVerificationStatusSerializer
    implements PrimitiveSerializer<RequirementVerificationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'draft': 'draft',
    'reviewed': 'reviewed',
    'verified': 'verified',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'draft': 'draft',
    'reviewed': 'reviewed',
    'verified': 'verified',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[RequirementVerificationStatus];
  @override
  final String wireName = 'RequirementVerificationStatus';

  @override
  Object serialize(
    Serializers serializers,
    RequirementVerificationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RequirementVerificationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RequirementVerificationStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
