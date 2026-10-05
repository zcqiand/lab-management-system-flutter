// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CurrentUserSession extends CurrentUserSession {
  @override
  final CurrentUser user;
  @override
  final BuiltList<MyTenant> tenants;
  @override
  final String? currentTenantId;

  factory _$CurrentUserSession([
    void Function(CurrentUserSessionBuilder)? updates,
  ]) => (CurrentUserSessionBuilder()..update(updates))._build();

  _$CurrentUserSession._({
    required this.user,
    required this.tenants,
    this.currentTenantId,
  }) : super._();
  @override
  CurrentUserSession rebuild(
    void Function(CurrentUserSessionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CurrentUserSessionBuilder toBuilder() =>
      CurrentUserSessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentUserSession &&
        user == other.user &&
        tenants == other.tenants &&
        currentTenantId == other.currentTenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, tenants.hashCode);
    _$hash = $jc(_$hash, currentTenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrentUserSession')
          ..add('user', user)
          ..add('tenants', tenants)
          ..add('currentTenantId', currentTenantId))
        .toString();
  }
}

class CurrentUserSessionBuilder
    implements Builder<CurrentUserSession, CurrentUserSessionBuilder> {
  _$CurrentUserSession? _$v;

  CurrentUserBuilder? _user;
  CurrentUserBuilder get user => _$this._user ??= CurrentUserBuilder();
  set user(CurrentUserBuilder? user) => _$this._user = user;

  ListBuilder<MyTenant>? _tenants;
  ListBuilder<MyTenant> get tenants =>
      _$this._tenants ??= ListBuilder<MyTenant>();
  set tenants(ListBuilder<MyTenant>? tenants) => _$this._tenants = tenants;

  String? _currentTenantId;
  String? get currentTenantId => _$this._currentTenantId;
  set currentTenantId(String? currentTenantId) =>
      _$this._currentTenantId = currentTenantId;

  CurrentUserSessionBuilder() {
    CurrentUserSession._defaults(this);
  }

  CurrentUserSessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _tenants = $v.tenants.toBuilder();
      _currentTenantId = $v.currentTenantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentUserSession other) {
    _$v = other as _$CurrentUserSession;
  }

  @override
  void update(void Function(CurrentUserSessionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrentUserSession build() => _build();

  _$CurrentUserSession _build() {
    _$CurrentUserSession _$result;
    try {
      _$result =
          _$v ??
          _$CurrentUserSession._(
            user: user.build(),
            tenants: tenants.build(),
            currentTenantId: currentTenantId,
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
          r'CurrentUserSession',
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
