// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_idle_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateIdleValueKindEnum _$authStateIdleValueKindEnum_idle =
    const AuthStateIdleValueKindEnum._('idle');

AuthStateIdleValueKindEnum _$authStateIdleValueKindEnumValueOf(String name) {
  switch (name) {
    case 'idle':
      return _$authStateIdleValueKindEnum_idle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateIdleValueKindEnum> _$authStateIdleValueKindEnumValues =
    BuiltSet<AuthStateIdleValueKindEnum>(const <AuthStateIdleValueKindEnum>[
      _$authStateIdleValueKindEnum_idle,
    ]);

Serializer<AuthStateIdleValueKindEnum> _$authStateIdleValueKindEnumSerializer =
    _$AuthStateIdleValueKindEnumSerializer();

class _$AuthStateIdleValueKindEnumSerializer
    implements PrimitiveSerializer<AuthStateIdleValueKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'idle': 'idle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'idle': 'idle',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStateIdleValueKindEnum];
  @override
  final String wireName = 'AuthStateIdleValueKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateIdleValueKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateIdleValueKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateIdleValueKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateIdleValue extends AuthStateIdleValue {
  @override
  final AuthStateIdleValueKindEnum kind;

  factory _$AuthStateIdleValue([
    void Function(AuthStateIdleValueBuilder)? updates,
  ]) => (AuthStateIdleValueBuilder()..update(updates))._build();

  _$AuthStateIdleValue._({required this.kind}) : super._();
  @override
  AuthStateIdleValue rebuild(
    void Function(AuthStateIdleValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AuthStateIdleValueBuilder toBuilder() =>
      AuthStateIdleValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateIdleValue && kind == other.kind;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AuthStateIdleValue',
    )..add('kind', kind)).toString();
  }
}

class AuthStateIdleValueBuilder
    implements Builder<AuthStateIdleValue, AuthStateIdleValueBuilder> {
  _$AuthStateIdleValue? _$v;

  AuthStateIdleValueKindEnum? _kind;
  AuthStateIdleValueKindEnum? get kind => _$this._kind;
  set kind(AuthStateIdleValueKindEnum? kind) => _$this._kind = kind;

  AuthStateIdleValueBuilder() {
    AuthStateIdleValue._defaults(this);
  }

  AuthStateIdleValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateIdleValue other) {
    _$v = other as _$AuthStateIdleValue;
  }

  @override
  void update(void Function(AuthStateIdleValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateIdleValue build() => _build();

  _$AuthStateIdleValue _build() {
    final _$result =
        _$v ??
        _$AuthStateIdleValue._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'AuthStateIdleValue',
            'kind',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
