// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_report_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InspectionReportName extends InspectionReportName {
  @override
  final String code;
  @override
  final String name;
  @override
  final String? fullName;
  @override
  final String? templatePath;
  @override
  final String? summaryName;
  @override
  final BuiltList<ExtFieldDef>? extFields;
  @override
  final String? description;
  @override
  final int sortOrder;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$InspectionReportName([
    void Function(InspectionReportNameBuilder)? updates,
  ]) => (InspectionReportNameBuilder()..update(updates))._build();

  _$InspectionReportName._({
    required this.code,
    required this.name,
    this.fullName,
    this.templatePath,
    this.summaryName,
    this.extFields,
    this.description,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  InspectionReportName rebuild(
    void Function(InspectionReportNameBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InspectionReportNameBuilder toBuilder() =>
      InspectionReportNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionReportName &&
        code == other.code &&
        name == other.name &&
        fullName == other.fullName &&
        templatePath == other.templatePath &&
        summaryName == other.summaryName &&
        extFields == other.extFields &&
        description == other.description &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, templatePath.hashCode);
    _$hash = $jc(_$hash, summaryName.hashCode);
    _$hash = $jc(_$hash, extFields.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InspectionReportName')
          ..add('code', code)
          ..add('name', name)
          ..add('fullName', fullName)
          ..add('templatePath', templatePath)
          ..add('summaryName', summaryName)
          ..add('extFields', extFields)
          ..add('description', description)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class InspectionReportNameBuilder
    implements Builder<InspectionReportName, InspectionReportNameBuilder> {
  _$InspectionReportName? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _templatePath;
  String? get templatePath => _$this._templatePath;
  set templatePath(String? templatePath) => _$this._templatePath = templatePath;

  String? _summaryName;
  String? get summaryName => _$this._summaryName;
  set summaryName(String? summaryName) => _$this._summaryName = summaryName;

  ListBuilder<ExtFieldDef>? _extFields;
  ListBuilder<ExtFieldDef> get extFields =>
      _$this._extFields ??= ListBuilder<ExtFieldDef>();
  set extFields(ListBuilder<ExtFieldDef>? extFields) =>
      _$this._extFields = extFields;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  InspectionReportNameBuilder() {
    InspectionReportName._defaults(this);
  }

  InspectionReportNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _fullName = $v.fullName;
      _templatePath = $v.templatePath;
      _summaryName = $v.summaryName;
      _extFields = $v.extFields?.toBuilder();
      _description = $v.description;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InspectionReportName other) {
    _$v = other as _$InspectionReportName;
  }

  @override
  void update(void Function(InspectionReportNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InspectionReportName build() => _build();

  _$InspectionReportName _build() {
    _$InspectionReportName _$result;
    try {
      _$result =
          _$v ??
          _$InspectionReportName._(
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'InspectionReportName',
              'code',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'InspectionReportName',
              'name',
            ),
            fullName: fullName,
            templatePath: templatePath,
            summaryName: summaryName,
            extFields: _extFields?.build(),
            description: description,
            sortOrder: BuiltValueNullFieldError.checkNotNull(
              sortOrder,
              r'InspectionReportName',
              'sortOrder',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'InspectionReportName',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'InspectionReportName',
              'updatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extFields';
        _extFields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InspectionReportName',
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
