// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Sample extends Sample {
  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String receiptId;
  @override
  final String sampleCode;
  @override
  final String? sampleName;
  @override
  final String? model;
  @override
  final String? specification;
  @override
  final String? grade;
  @override
  final String? brand;
  @override
  final String? manufacturer;
  @override
  final String? structuralPart;
  @override
  final String? representQuantity;
  @override
  final String? sampleQuantity;
  @override
  final String? batchNumber;
  @override
  final String? supplyUnit;
  @override
  final String? arrivalDate;
  @override
  final String? samplingDate;
  @override
  final String? curingCondition;
  @override
  final String? age;
  @override
  final BuiltMap<String, String> ext;
  @override
  final String? remark;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$Sample([void Function(SampleBuilder)? updates]) =>
      (SampleBuilder()..update(updates))._build();

  _$Sample._({
    required this.id,
    required this.tenantId,
    required this.receiptId,
    required this.sampleCode,
    this.sampleName,
    this.model,
    this.specification,
    this.grade,
    this.brand,
    this.manufacturer,
    this.structuralPart,
    this.representQuantity,
    this.sampleQuantity,
    this.batchNumber,
    this.supplyUnit,
    this.arrivalDate,
    this.samplingDate,
    this.curingCondition,
    this.age,
    required this.ext,
    this.remark,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  Sample rebuild(void Function(SampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleBuilder toBuilder() => SampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sample &&
        id == other.id &&
        tenantId == other.tenantId &&
        receiptId == other.receiptId &&
        sampleCode == other.sampleCode &&
        sampleName == other.sampleName &&
        model == other.model &&
        specification == other.specification &&
        grade == other.grade &&
        brand == other.brand &&
        manufacturer == other.manufacturer &&
        structuralPart == other.structuralPart &&
        representQuantity == other.representQuantity &&
        sampleQuantity == other.sampleQuantity &&
        batchNumber == other.batchNumber &&
        supplyUnit == other.supplyUnit &&
        arrivalDate == other.arrivalDate &&
        samplingDate == other.samplingDate &&
        curingCondition == other.curingCondition &&
        age == other.age &&
        ext == other.ext &&
        remark == other.remark &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, receiptId.hashCode);
    _$hash = $jc(_$hash, sampleCode.hashCode);
    _$hash = $jc(_$hash, sampleName.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, specification.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, structuralPart.hashCode);
    _$hash = $jc(_$hash, representQuantity.hashCode);
    _$hash = $jc(_$hash, sampleQuantity.hashCode);
    _$hash = $jc(_$hash, batchNumber.hashCode);
    _$hash = $jc(_$hash, supplyUnit.hashCode);
    _$hash = $jc(_$hash, arrivalDate.hashCode);
    _$hash = $jc(_$hash, samplingDate.hashCode);
    _$hash = $jc(_$hash, curingCondition.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, ext.hashCode);
    _$hash = $jc(_$hash, remark.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sample')
          ..add('id', id)
          ..add('tenantId', tenantId)
          ..add('receiptId', receiptId)
          ..add('sampleCode', sampleCode)
          ..add('sampleName', sampleName)
          ..add('model', model)
          ..add('specification', specification)
          ..add('grade', grade)
          ..add('brand', brand)
          ..add('manufacturer', manufacturer)
          ..add('structuralPart', structuralPart)
          ..add('representQuantity', representQuantity)
          ..add('sampleQuantity', sampleQuantity)
          ..add('batchNumber', batchNumber)
          ..add('supplyUnit', supplyUnit)
          ..add('arrivalDate', arrivalDate)
          ..add('samplingDate', samplingDate)
          ..add('curingCondition', curingCondition)
          ..add('age', age)
          ..add('ext', ext)
          ..add('remark', remark)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SampleBuilder implements Builder<Sample, SampleBuilder> {
  _$Sample? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  String? _receiptId;
  String? get receiptId => _$this._receiptId;
  set receiptId(String? receiptId) => _$this._receiptId = receiptId;

  String? _sampleCode;
  String? get sampleCode => _$this._sampleCode;
  set sampleCode(String? sampleCode) => _$this._sampleCode = sampleCode;

  String? _sampleName;
  String? get sampleName => _$this._sampleName;
  set sampleName(String? sampleName) => _$this._sampleName = sampleName;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _specification;
  String? get specification => _$this._specification;
  set specification(String? specification) =>
      _$this._specification = specification;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  String? _structuralPart;
  String? get structuralPart => _$this._structuralPart;
  set structuralPart(String? structuralPart) =>
      _$this._structuralPart = structuralPart;

  String? _representQuantity;
  String? get representQuantity => _$this._representQuantity;
  set representQuantity(String? representQuantity) =>
      _$this._representQuantity = representQuantity;

  String? _sampleQuantity;
  String? get sampleQuantity => _$this._sampleQuantity;
  set sampleQuantity(String? sampleQuantity) =>
      _$this._sampleQuantity = sampleQuantity;

  String? _batchNumber;
  String? get batchNumber => _$this._batchNumber;
  set batchNumber(String? batchNumber) => _$this._batchNumber = batchNumber;

  String? _supplyUnit;
  String? get supplyUnit => _$this._supplyUnit;
  set supplyUnit(String? supplyUnit) => _$this._supplyUnit = supplyUnit;

  String? _arrivalDate;
  String? get arrivalDate => _$this._arrivalDate;
  set arrivalDate(String? arrivalDate) => _$this._arrivalDate = arrivalDate;

  String? _samplingDate;
  String? get samplingDate => _$this._samplingDate;
  set samplingDate(String? samplingDate) => _$this._samplingDate = samplingDate;

  String? _curingCondition;
  String? get curingCondition => _$this._curingCondition;
  set curingCondition(String? curingCondition) =>
      _$this._curingCondition = curingCondition;

  String? _age;
  String? get age => _$this._age;
  set age(String? age) => _$this._age = age;

  MapBuilder<String, String>? _ext;
  MapBuilder<String, String> get ext =>
      _$this._ext ??= MapBuilder<String, String>();
  set ext(MapBuilder<String, String>? ext) => _$this._ext = ext;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  SampleBuilder() {
    Sample._defaults(this);
  }

  SampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tenantId = $v.tenantId;
      _receiptId = $v.receiptId;
      _sampleCode = $v.sampleCode;
      _sampleName = $v.sampleName;
      _model = $v.model;
      _specification = $v.specification;
      _grade = $v.grade;
      _brand = $v.brand;
      _manufacturer = $v.manufacturer;
      _structuralPart = $v.structuralPart;
      _representQuantity = $v.representQuantity;
      _sampleQuantity = $v.sampleQuantity;
      _batchNumber = $v.batchNumber;
      _supplyUnit = $v.supplyUnit;
      _arrivalDate = $v.arrivalDate;
      _samplingDate = $v.samplingDate;
      _curingCondition = $v.curingCondition;
      _age = $v.age;
      _ext = $v.ext.toBuilder();
      _remark = $v.remark;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sample other) {
    _$v = other as _$Sample;
  }

  @override
  void update(void Function(SampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sample build() => _build();

  _$Sample _build() {
    _$Sample _$result;
    try {
      _$result =
          _$v ??
          _$Sample._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Sample', 'id'),
            tenantId: BuiltValueNullFieldError.checkNotNull(
              tenantId,
              r'Sample',
              'tenantId',
            ),
            receiptId: BuiltValueNullFieldError.checkNotNull(
              receiptId,
              r'Sample',
              'receiptId',
            ),
            sampleCode: BuiltValueNullFieldError.checkNotNull(
              sampleCode,
              r'Sample',
              'sampleCode',
            ),
            sampleName: sampleName,
            model: model,
            specification: specification,
            grade: grade,
            brand: brand,
            manufacturer: manufacturer,
            structuralPart: structuralPart,
            representQuantity: representQuantity,
            sampleQuantity: sampleQuantity,
            batchNumber: batchNumber,
            supplyUnit: supplyUnit,
            arrivalDate: arrivalDate,
            samplingDate: samplingDate,
            curingCondition: curingCondition,
            age: age,
            ext: ext.build(),
            remark: remark,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Sample',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Sample',
              'updatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ext';
        ext.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Sample',
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
