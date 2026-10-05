// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_awaiting_tenant_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateAwaitingTenantValueKindEnum
_$authStateAwaitingTenantValueKindEnum_awaitingTenant =
    const AuthStateAwaitingTenantValueKindEnum._('awaitingTenant');

AuthStateAwaitingTenantValueKindEnum
_$authStateAwaitingTenantValueKindEnumValueOf(String name) {
  switch (name) {
    case 'awaitingTenant':
      return _$authStateAwaitingTenantValueKindEnum_awaitingTenant;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateAwaitingTenantValueKindEnum>
_$authStateAwaitingTenantValueKindEnumValues =
    BuiltSet<AuthStateAwaitingTenantValueKindEnum>(
      const <AuthStateAwaitingTenantValueKindEnum>[
        _$authStateAwaitingTenantValueKindEnum_awaitingTenant,
      ],
    );

Serializer<AuthStateAwaitingTenantValueKindEnum>
_$authStateAwaitingTenantValueKindEnumSerializer =
    _$AuthStateAwaitingTenantValueKindEnumSerializer();

class _$AuthStateAwaitingTenantValueKindEnumSerializer
    implements PrimitiveSerializer<AuthStateAwaitingTenantValueKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'awaitingTenant': 'awaiting_tenant',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'awaiting_tenant': 'awaitingTenant',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AuthStateAwaitingTenantValueKindEnum,
  ];
  @override
  final String wireName = 'AuthStateAwaitingTenantValueKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAwaitingTenantValueKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateAwaitingTenantValueKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateAwaitingTenantValueKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateAwaitingTenantValue extends AuthStateAwaitingTenantValue {
  @override
  final AuthStateAwaitingTenantValueKindEnum kind;
  @override
  final CurrentUser user;
  @override
  final BuiltList<MyTenant> tenants;

  factory _$AuthStateAwaitingTenantValue([
    void Function(AuthStateAwaitingTenantValueBuilder)? updates,
  ]) => (AuthStateAwaitingTenantValueBuilder()..update(updates))._build();

  _$AuthStateAwaitingTenantValue._({
    required this.kind,
    required this.user,
    required this.tenants,
  }) : super._();
  @override
  AuthStateAwaitingTenantValue rebuild(
    void Function(AuthStateAwaitingTenantValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AuthStateAwaitingTenantValueBuilder toBuilder() =>
      AuthStateAwaitingTenantValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateAwaitingTenantValue &&
        kind == other.kind &&
        user == other.user &&
        tenants == other.tenants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, tenants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthStateAwaitingTenantValue')
          ..add('kind', kind)
          ..add('user', user)
          ..add('tenants', tenants))
        .toString();
  }
}

class AuthStateAwaitingTenantValueBuilder
    implements
        Builder<
          AuthStateAwaitingTenantValue,
          AuthStateAwaitingTenantValueBuilder
        > {
  _$AuthStateAwaitingTenantValue? _$v;

  AuthStateAwaitingTenantValueKindEnum? _kind;
  AuthStateAwaitingTenantValueKindEnum? get kind => _$this._kind;
  set kind(AuthStateAwaitingTenantValueKindEnum? kind) => _$this._kind = kind;

  CurrentUserBuilder? _user;
  CurrentUserBuilder get user => _$this._user ??= CurrentUserBuilder();
  set user(CurrentUserBuilder? user) => _$this._user = user;

  ListBuilder<MyTenant>? _tenants;
  ListBuilder<MyTenant> get tenants =>
      _$this._tenants ??= ListBuilder<MyTenant>();
  set tenants(ListBuilder<MyTenant>? tenants) => _$this._tenants = tenants;

  AuthStateAwaitingTenantValueBuilder() {
    AuthStateAwaitingTenantValue._defaults(this);
  }

  AuthStateAwaitingTenantValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _user = $v.user.toBuilder();
      _tenants = $v.tenants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateAwaitingTenantValue other) {
    _$v = other as _$AuthStateAwaitingTenantValue;
  }

  @override
  void update(void Function(AuthStateAwaitingTenantValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateAwaitingTenantValue build() => _build();

  _$AuthStateAwaitingTenantValue _build() {
    _$AuthStateAwaitingTenantValue _$result;
    try {
      _$result =
          _$v ??
          _$AuthStateAwaitingTenantValue._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'AuthStateAwaitingTenantValue',
              'kind',
            ),
            user: user.build(),
            tenants: tenants.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'tenants';
        tenants.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AuthStateAwaitingTenantValue',
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
