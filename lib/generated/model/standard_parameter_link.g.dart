// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standard_parameter_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StandardParameterLink extends StandardParameterLink {
  @override
  final String inspectionStandardCode;
  @override
  final String inspectionParameterCode;

  factory _$StandardParameterLink([
    void Function(StandardParameterLinkBuilder)? updates,
  ]) => (StandardParameterLinkBuilder()..update(updates))._build();

  _$StandardParameterLink._({
    required this.inspectionStandardCode,
    required this.inspectionParameterCode,
  }) : super._();
  @override
  StandardParameterLink rebuild(
    void Function(StandardParameterLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StandardParameterLinkBuilder toBuilder() =>
      StandardParameterLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StandardParameterLink &&
        inspectionStandardCode == other.inspectionStandardCode &&
        inspectionParameterCode == other.inspectionParameterCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionStandardCode.hashCode);
    _$hash = $jc(_$hash, inspectionParameterCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StandardParameterLink')
          ..add('inspectionStandardCode', inspectionStandardCode)
          ..add('inspectionParameterCode', inspectionParameterCode))
        .toString();
  }
}

class StandardParameterLinkBuilder
    implements Builder<StandardParameterLink, StandardParameterLinkBuilder> {
  _$StandardParameterLink? _$v;

  String? _inspectionStandardCode;
  String? get inspectionStandardCode => _$this._inspectionStandardCode;
  set inspectionStandardCode(String? inspectionStandardCode) =>
      _$this._inspectionStandardCode = inspectionStandardCode;

  String? _inspectionParameterCode;
  String? get inspectionParameterCode => _$this._inspectionParameterCode;
  set inspectionParameterCode(String? inspectionParameterCode) =>
      _$this._inspectionParameterCode = inspectionParameterCode;

  StandardParameterLinkBuilder() {
    StandardParameterLink._defaults(this);
  }

  StandardParameterLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionStandardCode = $v.inspectionStandardCode;
      _inspectionParameterCode = $v.inspectionParameterCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StandardParameterLink other) {
    _$v = other as _$StandardParameterLink;
  }

  @override
  void update(void Function(StandardParameterLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StandardParameterLink build() => _build();

  _$StandardParameterLink _build() {
    final _$result =
        _$v ??
        _$StandardParameterLink._(
          inspectionStandardCode: BuiltValueNullFieldError.checkNotNull(
            inspectionStandardCode,
            r'StandardParameterLink',
            'inspectionStandardCode',
          ),
          inspectionParameterCode: BuiltValueNullFieldError.checkNotNull(
            inspectionParameterCode,
            r'StandardParameterLink',
            'inspectionParameterCode',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
