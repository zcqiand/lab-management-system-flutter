// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_specialty.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionSpecialty extends InspectionSpecialty {
  @override
  final String code;
  @override
  final String officialNo;
  @override
  final String name;
  @override
  final bool isOfficial;
  @override
  final bool enabled;
  @override
  final int sortOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$InspectionSpecialty([
    void Function(InspectionSpecialtyBuilder)? updates,
  ]) => (InspectionSpecialtyBuilder()..update(updates))._build();

  _$InspectionSpecialty._({
    required this.code,
    required this.officialNo,
    required this.name,
    required this.isOfficial,
    required this.enabled,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  InspectionSpecialty rebuild(
    void Function(InspectionSpecialtyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionSpecialtyBuilder toBuilder() =>
      InspectionSpecialtyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionSpecialty &&
        code == other.code &&
        officialNo == other.officialNo &&
        name == other.name &&
        isOfficial == other.isOfficial &&
        enabled == other.enabled &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, officialNo.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isOfficial.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectionSpecialty')
          ..add('code', code)
          ..add('officialNo', officialNo)
          ..add('name', name)
          ..add('isOfficial', isOfficial)
          ..add('enabled', enabled)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class InspectionSpecialtyBuilder
    implements Builder<InspectionSpecialty, InspectionSpecialtyBuilder> {
  _$InspectionSpecialty? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _officialNo;
  String? get officialNo => _$this._officialNo;
  set officialNo(String? officialNo) => _$this._officialNo = officialNo;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isOfficial;
  bool? get isOfficial => _$this._isOfficial;
  set isOfficial(bool? isOfficial) => _$this._isOfficial = isOfficial;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  InspectionSpecialtyBuilder() {
    InspectionSpecialty._defaults(this);
  }

  InspectionSpecialtyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _officialNo = $v.officialNo;
      _name = $v.name;
      _isOfficial = $v.isOfficial;
      _enabled = $v.enabled;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionSpecialty other) {
    _$v = other as _$InspectionSpecialty;
  }

  @override
  void update(void Function(InspectionSpecialtyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectionSpecialty build() => _build();

  _$InspectionSpecialty _build() {
    final _$result =
        _$v ??
        _$InspectionSpecialty._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'InspectionSpecialty',
            'code',
          ),
          officialNo: BuiltValueNullFieldError.checkNotNull(
            officialNo,
            r'InspectionSpecialty',
            'officialNo',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'InspectionSpecialty',
            'name',
          ),
          isOfficial: BuiltValueNullFieldError.checkNotNull(
            isOfficial,
            r'InspectionSpecialty',
            'isOfficial',
          ),
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'InspectionSpecialty',
            'enabled',
          ),
          sortOrder: BuiltValueNullFieldError.checkNotNull(
            sortOrder,
            r'InspectionSpecialty',
            'sortOrder',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'InspectionSpecialty',
            'createdAt',
          ),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
            updatedAt,
            r'InspectionSpecialty',
            'updatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
