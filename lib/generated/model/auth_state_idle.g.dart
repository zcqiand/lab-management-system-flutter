// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_idle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateIdleKindEnum _$authStateIdleKindEnum_idle =
    const AuthStateIdleKindEnum._('idle');

AuthStateIdleKindEnum _$authStateIdleKindEnumValueOf(String name) {
  switch (name) {
    case 'idle':
      return _$authStateIdleKindEnum_idle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateIdleKindEnum> _$authStateIdleKindEnumValues =
    BuiltSet<AuthStateIdleKindEnum>(const <AuthStateIdleKindEnum>[
      _$authStateIdleKindEnum_idle,
    ]);

Serializer<AuthStateIdleKindEnum> _$authStateIdleKindEnumSerializer =
    _$AuthStateIdleKindEnumSerializer();

class _$AuthStateIdleKindEnumSerializer
    implements PrimitiveSerializer<AuthStateIdleKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'idle': 'idle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'idle': 'idle',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStateIdleKindEnum];
  @override
  final String wireName = 'AuthStateIdleKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateIdleKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateIdleKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateIdleKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateIdle extends AuthStateIdle {
  @override
  final AuthStateIdleKindEnum kind;
  @override
  final AuthStateIdleValue value;

  factory _$AuthStateIdle([void Function(AuthStateIdleBuilder)? updates]) =>
      (AuthStateIdleBuilder()..update(updates))._build();

  _$AuthStateIdle._({required this.kind, required this.value}) : super._();
  @override
  AuthStateIdle rebuild(void Function(AuthStateIdleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateIdleBuilder toBuilder() => AuthStateIdleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateIdle && kind == other.kind && value == other.value;
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
    return (newBuiltValueToStringHelper(r'AuthStateIdle')
          ..add('kind', kind)
          ..add('value', value))
        .toString();
  }
}

class AuthStateIdleBuilder
    implements Builder<AuthStateIdle, AuthStateIdleBuilder> {
  _$AuthStateIdle? _$v;

  AuthStateIdleKindEnum? _kind;
  AuthStateIdleKindEnum? get kind => _$this._kind;
  set kind(AuthStateIdleKindEnum? kind) => _$this._kind = kind;

  AuthStateIdleValueBuilder? _value;
  AuthStateIdleValueBuilder get value =>
      _$this._value ??= AuthStateIdleValueBuilder();
  set value(AuthStateIdleValueBuilder? value) => _$this._value = value;

  AuthStateIdleBuilder() {
    AuthStateIdle._defaults(this);
  }

  AuthStateIdleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _value = $v.value.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateIdle other) {
    _$v = other as _$AuthStateIdle;
  }

  @override
  void update(void Function(AuthStateIdleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateIdle build() => _build();

  _$AuthStateIdle _build() {
    _$AuthStateIdle _$result;
    try {
      _$result =
          _$v ??
          _$AuthStateIdle._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'AuthStateIdle',
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
          r'AuthStateIdle',
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
