// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_awaiting_tenant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateAwaitingTenantKindEnum
_$authStateAwaitingTenantKindEnum_awaitingTenant =
    const AuthStateAwaitingTenantKindEnum._('awaitingTenant');

AuthStateAwaitingTenantKindEnum _$authStateAwaitingTenantKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'awaitingTenant':
      return _$authStateAwaitingTenantKindEnum_awaitingTenant;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateAwaitingTenantKindEnum>
_$authStateAwaitingTenantKindEnumValues =
    BuiltSet<AuthStateAwaitingTenantKindEnum>(
      const <AuthStateAwaitingTenantKindEnum>[
        _$authStateAwaitingTenantKindEnum_awaitingTenant,
      ],
    );

Serializer<AuthStateAwaitingTenantKindEnum>
_$authStateAwaitingTenantKindEnumSerializer =
    _$AuthStateAwaitingTenantKindEnumSerializer();

class _$AuthStateAwaitingTenantKindEnumSerializer
    implements PrimitiveSerializer<AuthStateAwaitingTenantKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'awaitingTenant': 'awaiting_tenant',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'awaiting_tenant': 'awaitingTenant',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthStateAwaitingTenantKindEnum];
  @override
  final String wireName = 'AuthStateAwaitingTenantKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAwaitingTenantKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateAwaitingTenantKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateAwaitingTenantKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateAwaitingTenant extends AuthStateAwaitingTenant {
  @override
  final AuthStateAwaitingTenantKindEnum kind;
  @override
  final AuthStateAwaitingTenantValue value;

  factory _$AuthStateAwaitingTenant([
    void Function(AuthStateAwaitingTenantBuilder)? updates,
  ]) => (AuthStateAwaitingTenantBuilder()..update(updates))._build();

  _$AuthStateAwaitingTenant._({required this.kind, required this.value})
    : super._();
  @override
  AuthStateAwaitingTenant rebuild(
    void Function(AuthStateAwaitingTenantBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AuthStateAwaitingTenantBuilder toBuilder() =>
      AuthStateAwaitingTenantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateAwaitingTenant &&
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
    return (newBuiltValueToStringHelper(r'AuthStateAwaitingTenant')
          ..add('kind', kind)
          ..add('value', value))
        .toString();
  }
}

class AuthStateAwaitingTenantBuilder
    implements
        Builder<AuthStateAwaitingTenant, AuthStateAwaitingTenantBuilder> {
  _$AuthStateAwaitingTenant? _$v;

  AuthStateAwaitingTenantKindEnum? _kind;
  AuthStateAwaitingTenantKindEnum? get kind => _$this._kind;
  set kind(AuthStateAwaitingTenantKindEnum? kind) => _$this._kind = kind;

  AuthStateAwaitingTenantValueBuilder? _value;
  AuthStateAwaitingTenantValueBuilder get value =>
      _$this._value ??= AuthStateAwaitingTenantValueBuilder();
  set value(AuthStateAwaitingTenantValueBuilder? value) =>
      _$this._value = value;

  AuthStateAwaitingTenantBuilder() {
    AuthStateAwaitingTenant._defaults(this);
  }

  AuthStateAwaitingTenantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _value = $v.value.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateAwaitingTenant other) {
    _$v = other as _$AuthStateAwaitingTenant;
  }

  @override
  void update(void Function(AuthStateAwaitingTenantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateAwaitingTenant build() => _build();

  _$AuthStateAwaitingTenant _build() {
    _$AuthStateAwaitingTenant _$result;
    try {
      _$result =
          _$v ??
          _$AuthStateAwaitingTenant._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'AuthStateAwaitingTenant',
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
          r'AuthStateAwaitingTenant',
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
