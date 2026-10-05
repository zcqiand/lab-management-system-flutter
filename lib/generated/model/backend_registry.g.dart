// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_registry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackendRegistry extends BackendRegistry {
  @override
  final BackendId active;
  @override
  final BuiltList<BackendConfig> available;

  factory _$BackendRegistry([void Function(BackendRegistryBuilder)? updates]) =>
      (BackendRegistryBuilder()..update(updates))._build();

  _$BackendRegistry._({required this.active, required this.available})
    : super._();
  @override
  BackendRegistry rebuild(void Function(BackendRegistryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackendRegistryBuilder toBuilder() => BackendRegistryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackendRegistry &&
        active == other.active &&
        available == other.available;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, available.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackendRegistry')
          ..add('active', active)
          ..add('available', available))
        .toString();
  }
}

class BackendRegistryBuilder
    implements Builder<BackendRegistry, BackendRegistryBuilder> {
  _$BackendRegistry? _$v;

  BackendId? _active;
  BackendId? get active => _$this._active;
  set active(BackendId? active) => _$this._active = active;

  ListBuilder<BackendConfig>? _available;
  ListBuilder<BackendConfig> get available =>
      _$this._available ??= ListBuilder<BackendConfig>();
  set available(ListBuilder<BackendConfig>? available) =>
      _$this._available = available;

  BackendRegistryBuilder() {
    BackendRegistry._defaults(this);
  }

  BackendRegistryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _available = $v.available.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackendRegistry other) {
    _$v = other as _$BackendRegistry;
  }

  @override
  void update(void Function(BackendRegistryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackendRegistry build() => _build();

  _$BackendRegistry _build() {
    _$BackendRegistry _$result;
    try {
      _$result =
          _$v ??
          _$BackendRegistry._(
            active: BuiltValueNullFieldError.checkNotNull(
              active,
              r'BackendRegistry',
              'active',
            ),
            available: available.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'available';
        available.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BackendRegistry',
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
