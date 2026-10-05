// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialty_object_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialtyObjectLink extends SpecialtyObjectLink {
  @override
  final String inspectionSpecialtyCode;
  @override
  final String inspectionObjectCode;
  @override
  final String? remark;

  factory _$SpecialtyObjectLink([
    void Function(SpecialtyObjectLinkBuilder)? updates,
  ]) => (SpecialtyObjectLinkBuilder()..update(updates))._build();

  _$SpecialtyObjectLink._({
    required this.inspectionSpecialtyCode,
    required this.inspectionObjectCode,
    this.remark,
  }) : super._();
  @override
  SpecialtyObjectLink rebuild(
    void Function(SpecialtyObjectLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SpecialtyObjectLinkBuilder toBuilder() =>
      SpecialtyObjectLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialtyObjectLink &&
        inspectionSpecialtyCode == other.inspectionSpecialtyCode &&
        inspectionObjectCode == other.inspectionObjectCode &&
        remark == other.remark;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionSpecialtyCode.hashCode);
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialtyObjectLink')
          ..add('inspectionSpecialtyCode', inspectionSpecialtyCode)
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('remark', remark))
        .toString();
  }
}

class SpecialtyObjectLinkBuilder
    implements Builder<SpecialtyObjectLink, SpecialtyObjectLinkBuilder> {
  _$SpecialtyObjectLink? _$v;

  String? _inspectionSpecialtyCode;
  String? get inspectionSpecialtyCode => _$this._inspectionSpecialtyCode;
  set inspectionSpecialtyCode(String? inspectionSpecialtyCode) =>
      _$this._inspectionSpecialtyCode = inspectionSpecialtyCode;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  SpecialtyObjectLinkBuilder() {
    SpecialtyObjectLink._defaults(this);
  }

  SpecialtyObjectLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionSpecialtyCode = $v.inspectionSpecialtyCode;
      _inspectionObjectCode = $v.inspectionObjectCode;
      _remark = $v.remark;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialtyObjectLink other) {
    _$v = other as _$SpecialtyObjectLink;
  }

  @override
  void update(void Function(SpecialtyObjectLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialtyObjectLink build() => _build();

  _$SpecialtyObjectLink _build() {
    final _$result =
        _$v ??
        _$SpecialtyObjectLink._(
          inspectionSpecialtyCode: BuiltValueNullFieldError.checkNotNull(
            inspectionSpecialtyCode,
            r'SpecialtyObjectLink',
            'inspectionSpecialtyCode',
          ),
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'SpecialtyObjectLink',
            'inspectionObjectCode',
          ),
          remark: remark,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
