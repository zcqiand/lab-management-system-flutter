// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_features.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackendFeatures extends BackendFeatures {
  @override
  final bool sso;
  @override
  final bool realDb;

  factory _$BackendFeatures([void Function(BackendFeaturesBuilder)? updates]) =>
      (BackendFeaturesBuilder()..update(updates))._build();

  _$BackendFeatures._({required this.sso, required this.realDb}) : super._();
  @override
  BackendFeatures rebuild(void Function(BackendFeaturesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackendFeaturesBuilder toBuilder() => BackendFeaturesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackendFeatures &&
        sso == other.sso &&
        realDb == other.realDb;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sso.hashCode);
    _$hash = $jc(_$hash, realDb.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackendFeatures')
          ..add('sso', sso)
          ..add('realDb', realDb))
        .toString();
  }
}

class BackendFeaturesBuilder
    implements Builder<BackendFeatures, BackendFeaturesBuilder> {
  _$BackendFeatures? _$v;

  bool? _sso;
  bool? get sso => _$this._sso;
  set sso(bool? sso) => _$this._sso = sso;

  bool? _realDb;
  bool? get realDb => _$this._realDb;
  set realDb(bool? realDb) => _$this._realDb = realDb;

  BackendFeaturesBuilder() {
    BackendFeatures._defaults(this);
  }

  BackendFeaturesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sso = $v.sso;
      _realDb = $v.realDb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackendFeatures other) {
    _$v = other as _$BackendFeatures;
  }

  @override
  void update(void Function(BackendFeaturesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackendFeatures build() => _build();

  _$BackendFeatures _build() {
    final _$result =
        _$v ??
        _$BackendFeatures._(
          sso: BuiltValueNullFieldError.checkNotNull(
            sso,
            r'BackendFeatures',
            'sso',
          ),
          realDb: BuiltValueNullFieldError.checkNotNull(
            realDb,
            r'BackendFeatures',
            'realDb',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
