// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_anonymous_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateAnonymousValueKindEnum
_$authStateAnonymousValueKindEnum_anonymous =
    const AuthStateAnonymousValueKindEnum._('anonymous');

AuthStateAnonymousValueKindEnum _$authStateAnonymousValueKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'anonymous':
      return _$authStateAnonymousValueKindEnum_anonymous;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateAnonymousValueKindEnum>
_$authStateAnonymousValueKindEnumValues =
    BuiltSet<AuthStateAnonymousValueKindEnum>(
      const <AuthStateAnonymousValueKindEnum>[
        _$authStateAnonymousValueKindEnum_anonymous,
      ],
    );

Serializer<AuthStateAnonymousValueKindEnum>
_$authStateAnonymousValueKindEnumSerializer =
    _$AuthStateAnonymousValueKindEnumSerializer();

class _$AuthStateAnonymousValueKindEnumSerializer
    implements PrimitiveSerializer<AuthStateAnonymousValueKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'anonymous': 'anonymous',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'anonymous': 'anonymous',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStateAnonymousValueKindEnum];
  @override
  final String wireName = 'AuthStateAnonymousValueKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAnonymousValueKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateAnonymousValueKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateAnonymousValueKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateAnonymousValue extends AuthStateAnonymousValue {
  @override
  final AuthStateAnonymousValueKindEnum kind;

  factory _$AuthStateAnonymousValue([
    void Function(AuthStateAnonymousValueBuilder)? updates,
  ]) => (AuthStateAnonymousValueBuilder()..update(updates))._build();

  _$AuthStateAnonymousValue._({required this.kind}) : super._();
  @override
  AuthStateAnonymousValue rebuild(
    void Function(AuthStateAnonymousValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AuthStateAnonymousValueBuilder toBuilder() =>
      AuthStateAnonymousValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateAnonymousValue && kind == other.kind;
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
      r'AuthStateAnonymousValue',
    )..add('kind', kind)).toString();
  }
}

class AuthStateAnonymousValueBuilder
    implements
        Builder<AuthStateAnonymousValue, AuthStateAnonymousValueBuilder> {
  _$AuthStateAnonymousValue? _$v;

  AuthStateAnonymousValueKindEnum? _kind;
  AuthStateAnonymousValueKindEnum? get kind => _$this._kind;
  set kind(AuthStateAnonymousValueKindEnum? kind) => _$this._kind = kind;

  AuthStateAnonymousValueBuilder() {
    AuthStateAnonymousValue._defaults(this);
  }

  AuthStateAnonymousValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateAnonymousValue other) {
    _$v = other as _$AuthStateAnonymousValue;
  }

  @override
  void update(void Function(AuthStateAnonymousValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateAnonymousValue build() => _build();

  _$AuthStateAnonymousValue _build() {
    final _$result =
        _$v ??
        _$AuthStateAnonymousValue._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'AuthStateAnonymousValue',
            'kind',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
