// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_authenticated_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthStateAuthenticatedValueKindEnum
_$authStateAuthenticatedValueKindEnum_authenticated =
    const AuthStateAuthenticatedValueKindEnum._('authenticated');

AuthStateAuthenticatedValueKindEnum
_$authStateAuthenticatedValueKindEnumValueOf(String name) {
  switch (name) {
    case 'authenticated':
      return _$authStateAuthenticatedValueKindEnum_authenticated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthStateAuthenticatedValueKindEnum>
_$authStateAuthenticatedValueKindEnumValues =
    BuiltSet<AuthStateAuthenticatedValueKindEnum>(
      const <AuthStateAuthenticatedValueKindEnum>[
        _$authStateAuthenticatedValueKindEnum_authenticated,
      ],
    );

Serializer<AuthStateAuthenticatedValueKindEnum>
_$authStateAuthenticatedValueKindEnumSerializer =
    _$AuthStateAuthenticatedValueKindEnumSerializer();

class _$AuthStateAuthenticatedValueKindEnumSerializer
    implements PrimitiveSerializer<AuthStateAuthenticatedValueKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'authenticated': 'authenticated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'authenticated': 'authenticated',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AuthStateAuthenticatedValueKindEnum,
  ];
  @override
  final String wireName = 'AuthStateAuthenticatedValueKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AuthStateAuthenticatedValueKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthStateAuthenticatedValueKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthStateAuthenticatedValueKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AuthStateAuthenticatedValue extends AuthStateAuthenticatedValue {
  @override
  final AuthStateAuthenticatedValueKindEnum kind;
  @override
  final CurrentUser user;
  @override
  final MyTenant tenant;
  @override
  final BuiltList<String> permissions;
  @override
  final int tokenExpiresAt;

  factory _$AuthStateAuthenticatedValue([
    void Function(AuthStateAuthenticatedValueBuilder)? updates,
  ]) => (AuthStateAuthenticatedValueBuilder()..update(updates))._build();

  _$AuthStateAuthenticatedValue._({
    required this.kind,
    required this.user,
    required this.tenant,
    required this.permissions,
    required this.tokenExpiresAt,
  }) : super._();
  @override
  AuthStateAuthenticatedValue rebuild(
    void Function(AuthStateAuthenticatedValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AuthStateAuthenticatedValueBuilder toBuilder() =>
      AuthStateAuthenticatedValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthStateAuthenticatedValue &&
        kind == other.kind &&
        user == other.user &&
        tenant == other.tenant &&
        permissions == other.permissions &&
        tokenExpiresAt == other.tokenExpiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, tenant.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, tokenExpiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthStateAuthenticatedValue')
          ..add('kind', kind)
          ..add('user', user)
          ..add('tenant', tenant)
          ..add('permissions', permissions)
          ..add('tokenExpiresAt', tokenExpiresAt))
        .toString();
  }
}

class AuthStateAuthenticatedValueBuilder
    implements
        Builder<
          AuthStateAuthenticatedValue,
          AuthStateAuthenticatedValueBuilder
        > {
  _$AuthStateAuthenticatedValue? _$v;

  AuthStateAuthenticatedValueKindEnum? _kind;
  AuthStateAuthenticatedValueKindEnum? get kind => _$this._kind;
  set kind(AuthStateAuthenticatedValueKindEnum? kind) => _$this._kind = kind;

  CurrentUserBuilder? _user;
  CurrentUserBuilder get user => _$this._user ??= CurrentUserBuilder();
  set user(CurrentUserBuilder? user) => _$this._user = user;

  MyTenantBuilder? _tenant;
  MyTenantBuilder get tenant => _$this._tenant ??= MyTenantBuilder();
  set tenant(MyTenantBuilder? tenant) => _$this._tenant = tenant;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  int? _tokenExpiresAt;
  int? get tokenExpiresAt => _$this._tokenExpiresAt;
  set tokenExpiresAt(int? tokenExpiresAt) =>
      _$this._tokenExpiresAt = tokenExpiresAt;

  AuthStateAuthenticatedValueBuilder() {
    AuthStateAuthenticatedValue._defaults(this);
  }

  AuthStateAuthenticatedValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _user = $v.user.toBuilder();
      _tenant = $v.tenant.toBuilder();
      _permissions = $v.permissions.toBuilder();
      _tokenExpiresAt = $v.tokenExpiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthStateAuthenticatedValue other) {
    _$v = other as _$AuthStateAuthenticatedValue;
  }

  @override
  void update(void Function(AuthStateAuthenticatedValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthStateAuthenticatedValue build() => _build();

  _$AuthStateAuthenticatedValue _build() {
    _$AuthStateAuthenticatedValue _$result;
    try {
      _$result =
          _$v ??
          _$AuthStateAuthenticatedValue._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'AuthStateAuthenticatedValue',
              'kind',
            ),
            user: user.build(),
            tenant: tenant.build(),
            permissions: permissions.build(),
            tokenExpiresAt: BuiltValueNullFieldError.checkNotNull(
              tokenExpiresAt,
              r'AuthStateAuthenticatedValue',
              'tokenExpiresAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'tenant';
        tenant.build();
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AuthStateAuthenticatedValue',
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
