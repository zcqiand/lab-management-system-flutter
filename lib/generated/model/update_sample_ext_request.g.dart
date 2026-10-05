// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_sample_ext_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSampleExtRequest extends UpdateSampleExtRequest {
  @override
  final BuiltMap<String, String> ext;

  factory _$UpdateSampleExtRequest([
    void Function(UpdateSampleExtRequestBuilder)? updates,
  ]) => (UpdateSampleExtRequestBuilder()..update(updates))._build();

  _$UpdateSampleExtRequest._({required this.ext}) : super._();
  @override
  UpdateSampleExtRequest rebuild(
    void Function(UpdateSampleExtRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateSampleExtRequestBuilder toBuilder() =>
      UpdateSampleExtRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSampleExtRequest && ext == other.ext;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ext.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UpdateSampleExtRequest',
    )..add('ext', ext)).toString();
  }
}

class UpdateSampleExtRequestBuilder
    implements Builder<UpdateSampleExtRequest, UpdateSampleExtRequestBuilder> {
  _$UpdateSampleExtRequest? _$v;

  MapBuilder<String, String>? _ext;
  MapBuilder<String, String> get ext =>
      _$this._ext ??= MapBuilder<String, String>();
  set ext(MapBuilder<String, String>? ext) => _$this._ext = ext;

  UpdateSampleExtRequestBuilder() {
    UpdateSampleExtRequest._defaults(this);
  }

  UpdateSampleExtRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ext = $v.ext.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSampleExtRequest other) {
    _$v = other as _$UpdateSampleExtRequest;
  }

  @override
  void update(void Function(UpdateSampleExtRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSampleExtRequest build() => _build();

  _$UpdateSampleExtRequest _build() {
    _$UpdateSampleExtRequest _$result;
    try {
      _$result = _$v ?? _$UpdateSampleExtRequest._(ext: ext.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ext';
        ext.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateSampleExtRequest',
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
