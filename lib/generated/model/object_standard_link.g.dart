// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_standard_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectStandardLink extends ObjectStandardLink {
  @override
  final String inspectionObjectCode;
  @override
  final String inspectionStandardCode;
  @override
  final InspectionStandardRole role;
  @override
  final String? remark;

  factory _$ObjectStandardLink([
    void Function(ObjectStandardLinkBuilder)? updates,
  ]) => (ObjectStandardLinkBuilder()..update(updates))._build();

  _$ObjectStandardLink._({
    required this.inspectionObjectCode,
    required this.inspectionStandardCode,
    required this.role,
    this.remark,
  }) : super._();
  @override
  ObjectStandardLink rebuild(
    void Function(ObjectStandardLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ObjectStandardLinkBuilder toBuilder() =>
      ObjectStandardLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectStandardLink &&
        inspectionObjectCode == other.inspectionObjectCode &&
        inspectionStandardCode == other.inspectionStandardCode &&
        role == other.role &&
        remark == other.remark;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionObjectCode.hashCode);
    _$hash = $jc(_$hash, inspectionStandardCode.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectStandardLink')
          ..add('inspectionObjectCode', inspectionObjectCode)
          ..add('inspectionStandardCode', inspectionStandardCode)
          ..add('role', role)
          ..add('remark', remark))
        .toString();
  }
}

class ObjectStandardLinkBuilder
    implements Builder<ObjectStandardLink, ObjectStandardLinkBuilder> {
  _$ObjectStandardLink? _$v;

  String? _inspectionObjectCode;
  String? get inspectionObjectCode => _$this._inspectionObjectCode;
  set inspectionObjectCode(String? inspectionObjectCode) =>
      _$this._inspectionObjectCode = inspectionObjectCode;

  String? _inspectionStandardCode;
  String? get inspectionStandardCode => _$this._inspectionStandardCode;
  set inspectionStandardCode(String? inspectionStandardCode) =>
      _$this._inspectionStandardCode = inspectionStandardCode;

  InspectionStandardRole? _role;
  InspectionStandardRole? get role => _$this._role;
  set role(InspectionStandardRole? role) => _$this._role = role;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  ObjectStandardLinkBuilder() {
    ObjectStandardLink._defaults(this);
  }

  ObjectStandardLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionObjectCode = $v.inspectionObjectCode;
      _inspectionStandardCode = $v.inspectionStandardCode;
      _role = $v.role;
      _remark = $v.remark;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectStandardLink other) {
    _$v = other as _$ObjectStandardLink;
  }

  @override
  void update(void Function(ObjectStandardLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectStandardLink build() => _build();

  _$ObjectStandardLink _build() {
    final _$result =
        _$v ??
        _$ObjectStandardLink._(
          inspectionObjectCode: BuiltValueNullFieldError.checkNotNull(
            inspectionObjectCode,
            r'ObjectStandardLink',
            'inspectionObjectCode',
          ),
          inspectionStandardCode: BuiltValueNullFieldError.checkNotNull(
            inspectionStandardCode,
            r'ObjectStandardLink',
            'inspectionStandardCode',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'ObjectStandardLink',
            'role',
          ),
          remark: remark,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
