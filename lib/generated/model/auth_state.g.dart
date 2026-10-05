// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateKindEnum _$authStateKindEnum_authenticated =
    const AuthStateKindEnum._('authenticated');

AuthStateKindEnum _$authStateKindEnumValueOf(String name) {
  switch (name) {
    case 'authenticated':
      return _$authStateKindEnum_authenticated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateKindEnum> _$authStateKindEnumValues =
    BuiltSet<AuthStateKindEnum>(const <AuthStateKindEnum>[
      _$authStateKindEnum_authenticated,
    ]);

Serializer<AuthStateKindEnum> _$authStateKindEnumSerializer =
    _$AuthStateKindEnumSerializer();

class _$AuthStateKindEnumSerializer
    implements PrimitiveSerializer<AuthStateKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'authenticated': 'authenticated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'authenticated': 'authenticated',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStateKindEnum];
  @override
  final String wireName = 'AuthStateKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthState extends AuthState {
  @override
  final OneOf oneOf;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (AuthStateBuilder()..update(updates))._build();

  _$AuthState._({required this.oneOf}) : super._();
  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AuthState',
    )..add('oneOf', oneOf)).toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  AuthStateBuilder() {
    AuthState._defaults(this);
  }

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthState build() => _build();

  _$AuthState _build() {
    final _$result =
        _$v ??
        _$AuthState._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'AuthState',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
