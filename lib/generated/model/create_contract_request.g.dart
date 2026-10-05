// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_contract_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateContractRequest extends CreateContractRequest {
  @override
  final String contractCode;
  @override
  final String clientUnit;
  @override
  final String projectName;
  @override
  final String? projectLocation;
  @override
  final String constructionUnit;
  @override
  final String? inspectionSpecialtyCode;
  @override
  final String? buildingUnit;
  @override
  final String? supervisorUnit;
  @override
  final String? inspectionPerson;
  @override
  final String? inspectionPhone;
  @override
  final String witnessUnit;
  @override
  final String witness;
  @override
  final String? witnessPhone;
  @override
  final String? contactPerson;
  @override
  final String? contactPhone;
  @override
  final String? entrustedDate;
  @override
  final ContractStatus? status;

  factory _$CreateContractRequest([
    void Function(CreateContractRequestBuilder)? updates,
  ]) => (CreateContractRequestBuilder()..update(updates))._build();

  _$CreateContractRequest._({
    required this.contractCode,
    required this.clientUnit,
    required this.projectName,
    this.projectLocation,
    required this.constructionUnit,
    this.inspectionSpecialtyCode,
    this.buildingUnit,
    this.supervisorUnit,
    this.inspectionPerson,
    this.inspectionPhone,
    required this.witnessUnit,
    required this.witness,
    this.witnessPhone,
    this.contactPerson,
    this.contactPhone,
    this.entrustedDate,
    this.status,
  }) : super._();
  @override
  CreateContractRequest rebuild(
    void Function(CreateContractRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateContractRequestBuilder toBuilder() =>
      CreateContractRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateContractRequest &&
        contractCode == other.contractCode &&
        clientUnit == other.clientUnit &&
        projectName == other.projectName &&
        projectLocation == other.projectLocation &&
        constructionUnit == other.constructionUnit &&
        inspectionSpecialtyCode == other.inspectionSpecialtyCode &&
        buildingUnit == other.buildingUnit &&
        supervisorUnit == other.supervisorUnit &&
        inspectionPerson == other.inspectionPerson &&
        inspectionPhone == other.inspectionPhone &&
        witnessUnit == other.witnessUnit &&
        witness == other.witness &&
        witnessPhone == other.witnessPhone &&
        contactPerson == other.contactPerson &&
        contactPhone == other.contactPhone &&
        entrustedDate == other.entrustedDate &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contractCode.hashCode);
    _$hash = $jc(_$hash, clientUnit.hashCode);
    _$hash = $jc(_$hash, projectName.hashCode);
    _$hash = $jc(_$hash, projectLocation.hashCode);
    _$hash = $jc(_$hash, constructionUnit.hashCode);
    _$hash = $jc(_$hash, inspectionSpecialtyCode.hashCode);
    _$hash = $jc(_$hash, buildingUnit.hashCode);
    _$hash = $jc(_$hash, supervisorUnit.hashCode);
    _$hash = $jc(_$hash, inspectionPerson.hashCode);
    _$hash = $jc(_$hash, inspectionPhone.hashCode);
    _$hash = $jc(_$hash, witnessUnit.hashCode);
    _$hash = $jc(_$hash, witness.hashCode);
    _$hash = $jc(_$hash, witnessPhone.hashCode);
    _$hash = $jc(_$hash, contactPerson.hashCode);
    _$hash = $jc(_$hash, contactPhone.hashCode);
    _$hash = $jc(_$hash, entrustedDate.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateContractRequest')
          ..add('contractCode', contractCode)
          ..add('clientUnit', clientUnit)
          ..add('projectName', projectName)
          ..add('projectLocation', projectLocation)
          ..add('constructionUnit', constructionUnit)
          ..add('inspectionSpecialtyCode', inspectionSpecialtyCode)
          ..add('buildingUnit', buildingUnit)
          ..add('supervisorUnit', supervisorUnit)
          ..add('inspectionPerson', inspectionPerson)
          ..add('inspectionPhone', inspectionPhone)
          ..add('witnessUnit', witnessUnit)
          ..add('witness', witness)
          ..add('witnessPhone', witnessPhone)
          ..add('contactPerson', contactPerson)
          ..add('contactPhone', contactPhone)
          ..add('entrustedDate', entrustedDate)
          ..add('status', status))
        .toString();
  }
}

class CreateContractRequestBuilder
    implements Builder<CreateContractRequest, CreateContractRequestBuilder> {
  _$CreateContractRequest? _$v;

  String? _contractCode;
  String? get contractCode => _$this._contractCode;
  set contractCode(String? contractCode) => _$this._contractCode = contractCode;

  String? _clientUnit;
  String? get clientUnit => _$this._clientUnit;
  set clientUnit(String? clientUnit) => _$this._clientUnit = clientUnit;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  String? _projectLocation;
  String? get projectLocation => _$this._projectLocation;
  set projectLocation(String? projectLocation) =>
      _$this._projectLocation = projectLocation;

  String? _constructionUnit;
  String? get constructionUnit => _$this._constructionUnit;
  set constructionUnit(String? constructionUnit) =>
      _$this._constructionUnit = constructionUnit;

  String? _inspectionSpecialtyCode;
  String? get inspectionSpecialtyCode => _$this._inspectionSpecialtyCode;
  set inspectionSpecialtyCode(String? inspectionSpecialtyCode) =>
      _$this._inspectionSpecialtyCode = inspectionSpecialtyCode;

  String? _buildingUnit;
  String? get buildingUnit => _$this._buildingUnit;
  set buildingUnit(String? buildingUnit) => _$this._buildingUnit = buildingUnit;

  String? _supervisorUnit;
  String? get supervisorUnit => _$this._supervisorUnit;
  set supervisorUnit(String? supervisorUnit) =>
      _$this._supervisorUnit = supervisorUnit;

  String? _inspectionPerson;
  String? get inspectionPerson => _$this._inspectionPerson;
  set inspectionPerson(String? inspectionPerson) =>
      _$this._inspectionPerson = inspectionPerson;

  String? _inspectionPhone;
  String? get inspectionPhone => _$this._inspectionPhone;
  set inspectionPhone(String? inspectionPhone) =>
      _$this._inspectionPhone = inspectionPhone;

  String? _witnessUnit;
  String? get witnessUnit => _$this._witnessUnit;
  set witnessUnit(String? witnessUnit) => _$this._witnessUnit = witnessUnit;

  String? _witness;
  String? get witness => _$this._witness;
  set witness(String? witness) => _$this._witness = witness;

  String? _witnessPhone;
  String? get witnessPhone => _$this._witnessPhone;
  set witnessPhone(String? witnessPhone) => _$this._witnessPhone = witnessPhone;

  String? _contactPerson;
  String? get contactPerson => _$this._contactPerson;
  set contactPerson(String? contactPerson) =>
      _$this._contactPerson = contactPerson;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _entrustedDate;
  String? get entrustedDate => _$this._entrustedDate;
  set entrustedDate(String? entrustedDate) =>
      _$this._entrustedDate = entrustedDate;

  ContractStatus? _status;
  ContractStatus? get status => _$this._status;
  set status(ContractStatus? status) => _$this._status = status;

  CreateContractRequestBuilder() {
    CreateContractRequest._defaults(this);
  }

  CreateContractRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contractCode = $v.contractCode;
      _clientUnit = $v.clientUnit;
      _projectName = $v.projectName;
      _projectLocation = $v.projectLocation;
      _constructionUnit = $v.constructionUnit;
      _inspectionSpecialtyCode = $v.inspectionSpecialtyCode;
      _buildingUnit = $v.buildingUnit;
      _supervisorUnit = $v.supervisorUnit;
      _inspectionPerson = $v.inspectionPerson;
      _inspectionPhone = $v.inspectionPhone;
      _witnessUnit = $v.witnessUnit;
      _witness = $v.witness;
      _witnessPhone = $v.witnessPhone;
      _contactPerson = $v.contactPerson;
      _contactPhone = $v.contactPhone;
      _entrustedDate = $v.entrustedDate;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateContractRequest other) {
    _$v = other as _$CreateContractRequest;
  }

  @override
  void update(void Function(CreateContractRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateContractRequest build() => _build();

  _$CreateContractRequest _build() {
    final _$result =
        _$v ??
        _$CreateContractRequest._(
          contractCode: BuiltValueNullFieldError.checkNotNull(
            contractCode,
            r'CreateContractRequest',
            'contractCode',
          ),
          clientUnit: BuiltValueNullFieldError.checkNotNull(
            clientUnit,
            r'CreateContractRequest',
            'clientUnit',
          ),
          projectName: BuiltValueNullFieldError.checkNotNull(
            projectName,
            r'CreateContractRequest',
            'projectName',
          ),
          projectLocation: projectLocation,
          constructionUnit: BuiltValueNullFieldError.checkNotNull(
            constructionUnit,
            r'CreateContractRequest',
            'constructionUnit',
          ),
          inspectionSpecialtyCode: inspectionSpecialtyCode,
          buildingUnit: buildingUnit,
          supervisorUnit: supervisorUnit,
          inspectionPerson: inspectionPerson,
          inspectionPhone: inspectionPhone,
          witnessUnit: BuiltValueNullFieldError.checkNotNull(
            witnessUnit,
            r'CreateContractRequest',
            'witnessUnit',
          ),
          witness: BuiltValueNullFieldError.checkNotNull(
            witness,
            r'CreateContractRequest',
            'witness',
          ),
          witnessPhone: witnessPhone,
          contactPerson: contactPerson,
          contactPhone: contactPhone,
          entrustedDate: entrustedDate,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
