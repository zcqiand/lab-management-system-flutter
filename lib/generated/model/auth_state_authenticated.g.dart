// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_authenticated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateAuthenticatedKindEnum
_$authStateAuthenticatedKindEnum_authenticated =
    const AuthStateAuthenticatedKindEnum._('authenticated');

AuthStateAuthenticatedKindEnum _$authStateAuthenticatedKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'authenticated':
      return _$authStateAuthenticatedKindEnum_authenticated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateAuthenticatedKindEnum>
_$authStateAuthenticatedKindEnumValues =
    BuiltSet<AuthStateAuthenticatedKindEnum>(
      const <AuthStateAuthenticatedKindEnum>[
        _$authStateAuthenticatedKindEnum_authenticated,
      ],
    );

Serializer<AuthStateAuthenticatedKindEnum>
_$authStateAuthenticatedKindEnumSerializer =
    _$AuthStateAuthenticatedKindEnumSerializer();

class _$AuthStateAuthenticatedKindEnumSerializer
    implements PrimitiveSerializer<AuthStateAuthenticatedKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'authenticated': 'authenticated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'authenticated': 'authenticated',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStateAuthenticatedKindEnum];
  @override
  final String wireName = 'AuthStateAuthenticatedKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAuthenticatedKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateAuthenticatedKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateAuthenticatedKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateAuthenticated extends AuthStateAuthenticated {
  @override
  final AuthStateAuthenticatedKindEnum kind;
  @override
  final AuthStateAuthenticatedValue value;

  factory _$AuthStateAuthenticated([
    void Function(AuthStateAuthenticatedBuilder)? updates,
  ]) => (AuthStateAuthenticatedBuilder()..update(updates))._build();

  _$AuthStateAuthenticated._({required this.kind, required this.value})
    : super._();
  @override
  AuthStateAuthenticated rebuild(
    void Function(AuthStateAuthenticatedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AuthStateAuthenticatedBuilder toBuilder() =>
      AuthStateAuthenticatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateAuthenticated &&
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
    return (newBuiltValueToStringHelper(r'AuthStateAuthenticated')
          ..add('kind', kind)
          ..add('value', value))
        .toString();
  }
}

class AuthStateAuthenticatedBuilder
    implements Builder<AuthStateAuthenticated, AuthStateAuthenticatedBuilder> {
  _$AuthStateAuthenticated? _$v;

  AuthStateAuthenticatedKindEnum? _kind;
  AuthStateAuthenticatedKindEnum? get kind => _$this._kind;
  set kind(AuthStateAuthenticatedKindEnum? kind) => _$this._kind = kind;

  AuthStateAuthenticatedValueBuilder? _value;
  AuthStateAuthenticatedValueBuilder get value =>
      _$this._value ??= AuthStateAuthenticatedValueBuilder();
  set value(AuthStateAuthenticatedValueBuilder? value) => _$this._value = value;

  AuthStateAuthenticatedBuilder() {
    AuthStateAuthenticated._defaults(this);
  }

  AuthStateAuthenticatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _value = $v.value.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateAuthenticated other) {
    _$v = other as _$AuthStateAuthenticated;
  }

  @override
  void update(void Function(AuthStateAuthenticatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateAuthenticated build() => _build();

  _$AuthStateAuthenticated _build() {
    _$AuthStateAuthenticated _$result;
    try {
      _$result =
          _$v ??
          _$AuthStateAuthenticated._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'AuthStateAuthenticated',
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
          r'AuthStateAuthenticated',
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
