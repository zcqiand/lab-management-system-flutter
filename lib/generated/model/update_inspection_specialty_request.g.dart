// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inspection_specialty_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateInspectionSpecialtyRequest
    extends UpdateInspectionSpecialtyRequest {
  @override
  final String? officialNo;
  @override
  final String? name;
  @override
  final bool? isOfficial;
  @override
  final bool? enabled;
  @override
  final int? sortOrder;

  factory _$UpdateInspectionSpecialtyRequest([
    void Function(UpdateInspectionSpecialtyRequestBuilder)? updates,
  ]) => (UpdateInspectionSpecialtyRequestBuilder()..update(updates))._build();

  _$UpdateInspectionSpecialtyRequest._({
    this.officialNo,
    this.name,
    this.isOfficial,
    this.enabled,
    this.sortOrder,
  }) : super._();
  @override
  UpdateInspectionSpecialtyRequest rebuild(
    void Function(UpdateInspectionSpecialtyRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateInspectionSpecialtyRequestBuilder toBuilder() =>
      UpdateInspectionSpecialtyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateInspectionSpecialtyRequest &&
        officialNo == other.officialNo &&
        name == other.name &&
        isOfficial == other.isOfficial &&
        enabled == other.enabled &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'UpdateInspectionSpecialtyRequest')
          ..add('officialNo', officialNo)
          ..add('name', name)
          ..add('isOfficial', isOfficial)
          ..add('enabled', enabled)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class UpdateInspectionSpecialtyRequestBuilder
    implements
        Builder<
          UpdateInspectionSpecialtyRequest,
          UpdateInspectionSpecialtyRequestBuilder
        > {
  _$UpdateInspectionSpecialtyRequest? _$v;

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

  UpdateInspectionSpecialtyRequestBuilder() {
    UpdateInspectionSpecialtyRequest._defaults(this);
  }

  UpdateInspectionSpecialtyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(UpdateInspectionSpecialtyRequest other) {
    _$v = other as _$UpdateInspectionSpecialtyRequest;
  }

  @override
  void update(void Function(UpdateInspectionSpecialtyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateInspectionSpecialtyRequest build() => _build();

  _$UpdateInspectionSpecialtyRequest _build() {
    final _$result =
        _$v ??
        _$UpdateInspectionSpecialtyRequest._(
          officialNo: officialNo,
          name: name,
          isOfficial: isOfficial,
          enabled: enabled,
          sortOrder: sortOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
