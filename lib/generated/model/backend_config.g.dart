// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackendConfig extends BackendConfig {
  @override
  final BackendId id;
  @override
  final String label;
  @override
  final String baseUrl;
  @override
  final AuthHeaderKind authHeader;
  @override
  final String? ssoCallbackPath;
  @override
  final BackendFeatures features;

  factory _$BackendConfig([void Function(BackendConfigBuilder)? updates]) =>
      (BackendConfigBuilder()..update(updates))._build();

  _$BackendConfig._({
    required this.id,
    required this.label,
    required this.baseUrl,
    required this.authHeader,
    this.ssoCallbackPath,
    required this.features,
  }) : super._();
  @override
  BackendConfig rebuild(void Function(BackendConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackendConfigBuilder toBuilder() => BackendConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackendConfig &&
        id == other.id &&
        label == other.label &&
        baseUrl == other.baseUrl &&
        authHeader == other.authHeader &&
        ssoCallbackPath == other.ssoCallbackPath &&
        features == other.features;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, authHeader.hashCode);
    _$hash = $jc(_$hash, ssoCallbackPath.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackendConfig')
          ..add('id', id)
          ..add('label', label)
          ..add('baseUrl', baseUrl)
          ..add('authHeader', authHeader)
          ..add('ssoCallbackPath', ssoCallbackPath)
          ..add('features', features))
        .toString();
  }
}

class BackendConfigBuilder
    implements Builder<BackendConfig, BackendConfigBuilder> {
  _$BackendConfig? _$v;

  BackendId? _id;
  BackendId? get id => _$this._id;
  set id(BackendId? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  AuthHeaderKind? _authHeader;
  AuthHeaderKind? get authHeader => _$this._authHeader;
  set authHeader(AuthHeaderKind? authHeader) => _$this._authHeader = authHeader;

  String? _ssoCallbackPath;
  String? get ssoCallbackPath => _$this._ssoCallbackPath;
  set ssoCallbackPath(String? ssoCallbackPath) =>
      _$this._ssoCallbackPath = ssoCallbackPath;

  BackendFeaturesBuilder? _features;
  BackendFeaturesBuilder get features =>
      _$this._features ??= BackendFeaturesBuilder();
  set features(BackendFeaturesBuilder? features) => _$this._features = features;

  BackendConfigBuilder() {
    BackendConfig._defaults(this);
  }

  BackendConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _baseUrl = $v.baseUrl;
      _authHeader = $v.authHeader;
      _ssoCallbackPath = $v.ssoCallbackPath;
      _features = $v.features.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackendConfig other) {
    _$v = other as _$BackendConfig;
  }

  @override
  void update(void Function(BackendConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackendConfig build() => _build();

  _$BackendConfig _build() {
    _$BackendConfig _$result;
    try {
      _$result =
          _$v ??
          _$BackendConfig._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'BackendConfig',
              'id',
            ),
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'BackendConfig',
              'label',
            ),
            baseUrl: BuiltValueNullFieldError.checkNotNull(
              baseUrl,
              r'BackendConfig',
              'baseUrl',
            ),
            authHeader: BuiltValueNullFieldError.checkNotNull(
              authHeader,
              r'BackendConfig',
              'authHeader',
            ),
            ssoCallbackPath: ssoCallbackPath,
            features: features.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BackendConfig',
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
