// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_inspection_specialty_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInspectionSpecialtyRequest
    extends CreateInspectionSpecialtyRequest {
  @override
  final String code;
  @override
  final String officialNo;
  @override
  final String name;
  @override
  final bool? isOfficial;
  @override
  final bool? enabled;
  @override
  final int? sortOrder;

  factory _$CreateInspectionSpecialtyRequest([
    void Function(CreateInspectionSpecialtyRequestBuilder)? updates,
  ]) => (CreateInspectionSpecialtyRequestBuilder()..update(updates))._build();

  _$CreateInspectionSpecialtyRequest._({
    required this.code,
    required this.officialNo,
    required this.name,
    this.isOfficial,
    this.enabled,
    this.sortOrder,
  }) : super._();
  @override
  CreateInspectionSpecialtyRequest rebuild(
    void Function(CreateInspectionSpecialtyRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateInspectionSpecialtyRequestBuilder toBuilder() =>
      CreateInspectionSpecialtyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInspectionSpecialtyRequest &&
        code == other.code &&
        officialNo == other.officialNo &&
        name == other.name &&
        isOfficial == other.isOfficial &&
        enabled == other.enabled &&
        sortOrder == other.sortOrder;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateInspectionSpecialtyRequest')
          ..add('code', code)
          ..add('officialNo', officialNo)
          ..add('name', name)
          ..add('isOfficial', isOfficial)
          ..add('enabled', enabled)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class CreateInspectionSpecialtyRequestBuilder
    implements
        Builder<
          CreateInspectionSpecialtyRequest,
          CreateInspectionSpecialtyRequestBuilder
        > {
  _$CreateInspectionSpecialtyRequest? _$v;

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

  CreateInspectionSpecialtyRequestBuilder() {
    CreateInspectionSpecialtyRequest._defaults(this);
  }

  CreateInspectionSpecialtyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _officialNo = $v.officialNo;
      _name = $v.name;
      _isOfficial = $v.isOfficial;
      _enabled = $v.enabled;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInspectionSpecialtyRequest other) {
    _$v = other as _$CreateInspectionSpecialtyRequest;
  }

  @override
  void update(void Function(CreateInspectionSpecialtyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInspectionSpecialtyRequest build() => _build();

  _$CreateInspectionSpecialtyRequest _build() {
    final _$result =
        _$v ??
        _$CreateInspectionSpecialtyRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'CreateInspectionSpecialtyRequest',
            'code',
          ),
          officialNo: BuiltValueNullFieldError.checkNotNull(
            officialNo,
            r'CreateInspectionSpecialtyRequest',
            'officialNo',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateInspectionSpecialtyRequest',
            'name',
          ),
          isOfficial: isOfficial,
          enabled: enabled,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
