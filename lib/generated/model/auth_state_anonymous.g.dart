// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_anonymous.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateAnonymousKindEnum _$authStateAnonymousKindEnum_anonymous =
    const AuthStateAnonymousKindEnum._('anonymous');

AuthStateAnonymousKindEnum _$authStateAnonymousKindEnumValueOf(String name) {
  switch (name) {
    case 'anonymous':
      return _$authStateAnonymousKindEnum_anonymous;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateAnonymousKindEnum> _$authStateAnonymousKindEnumValues =
    BuiltSet<AuthStateAnonymousKindEnum>(const <AuthStateAnonymousKindEnum>[
      _$authStateAnonymousKindEnum_anonymous,
    ]);

Serializer<AuthStateAnonymousKindEnum> _$authStateAnonymousKindEnumSerializer =
    _$AuthStateAnonymousKindEnumSerializer();

class _$AuthStateAnonymousKindEnumSerializer
    implements PrimitiveSerializer<AuthStateAnonymousKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'anonymous': 'anonymous',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'anonymous': 'anonymous',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStateAnonymousKindEnum];
  @override
  final String wireName = 'AuthStateAnonymousKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAnonymousKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateAnonymousKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateAnonymousKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateAnonymous extends AuthStateAnonymous {
  @override
  final AuthStateAnonymousKindEnum kind;
  @override
  final AuthStateAnonymousValue value;

  factory _$AuthStateAnonymous([
    void Function(AuthStateAnonymousBuilder)? updates,
  ]) => (AuthStateAnonymousBuilder()..update(updates))._build();

  _$AuthStateAnonymous._({required this.kind, required this.value}) : super._();
  @override
  AuthStateAnonymous rebuild(
    void Function(AuthStateAnonymousBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AuthStateAnonymousBuilder toBuilder() =>
      AuthStateAnonymousBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateAnonymous &&
        kind == other.kind &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthStateAnonymous')
          ..add('kind', kind)
          ..add('value', value))
        .toString();
  }
}

class AuthStateAnonymousBuilder
    implements Builder<AuthStateAnonymous, AuthStateAnonymousBuilder> {
  _$AuthStateAnonymous? _$v;

  AuthStateAnonymousKindEnum? _kind;
  AuthStateAnonymousKindEnum? get kind => _$this._kind;
  set kind(AuthStateAnonymousKindEnum? kind) => _$this._kind = kind;

  AuthStateAnonymousValueBuilder? _value;
  AuthStateAnonymousValueBuilder get value =>
      _$this._value ??= AuthStateAnonymousValueBuilder();
  set value(AuthStateAnonymousValueBuilder? value) => _$this._value = value;

  AuthStateAnonymousBuilder() {
    AuthStateAnonymous._defaults(this);
  }

  AuthStateAnonymousBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _value = $v.value.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateAnonymous other) {
    _$v = other as _$AuthStateAnonymous;
  }

  @override
  void update(void Function(AuthStateAnonymousBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateAnonymous build() => _build();

  _$AuthStateAnonymous _build() {
    _$AuthStateAnonymous _$result;
    try {
      _$result =
          _$v ??
          _$AuthStateAnonymous._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'AuthStateAnonymous',
              'kind',
            ),
            value: value.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        value.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AuthStateAnonymous',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
