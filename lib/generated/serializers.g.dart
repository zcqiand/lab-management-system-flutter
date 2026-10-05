// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(AssignTaskRequest.serializer)
          ..add(AuthContext.serializer)
          ..add(AuthHeaderKind.serializer)
          ..add(AuthLogoutRequest.serializer)
          ..add(AuthState.serializer)
          ..add(AuthStateAnonymous.serializer)
          ..add(AuthStateAnonymousKindEnum.serializer)
          ..add(AuthStateAnonymousValue.serializer)
          ..add(AuthStateAnonymousValueKindEnum.serializer)
          ..add(AuthStateAuthenticated.serializer)
          ..add(AuthStateAuthenticatedKindEnum.serializer)
          ..add(AuthStateAuthenticatedValue.serializer)
          ..add(AuthStateAuthenticatedValueKindEnum.serializer)
          ..add(AuthStateAwaitingTenant.serializer)
          ..add(AuthStateAwaitingTenantKindEnum.serializer)
          ..add(AuthStateAwaitingTenantValue.serializer)
          ..add(AuthStateAwaitingTenantValueKindEnum.serializer)
          ..add(AuthStateIdle.serializer)
          ..add(AuthStateIdleKindEnum.serializer)
          ..add(AuthStateIdleValue.serializer)
          ..add(AuthStateIdleValueKindEnum.serializer)
          ..add(BackendConfig.serializer)
          ..add(BackendFeatures.serializer)
          ..add(BackendId.serializer)
          ..add(BackendRegistry.serializer)
          ..add(CalculationAlgorithmType.serializer)
          ..add(CalculationMethod.serializer)
          ..add(CatalogListBrands200Response.serializer)
          ..add(CatalogListGrades200Response.serializer)
          ..add(CatalogListModels200Response.serializer)
          ..add(CatalogListSpecs200Response.serializer)
          ..add(Contract.serializer)
          ..add(ContractStatus.serializer)
          ..add(ContractsListContracts200Response.serializer)
          ..add(CreateCalculationMethodRequest.serializer)
          ..add(CreateCatalogEntryRequest.serializer)
          ..add(CreateContractRequest.serializer)
          ..add(CreateInspectionObjectRequest.serializer)
          ..add(CreateInspectionParameterRequest.serializer)
          ..add(CreateInspectionReportNameRequest.serializer)
          ..add(CreateInspectionSpecialtyRequest.serializer)
          ..add(CreateInspectionStandardRequest.serializer)
          ..add(CreateParamInterfaceRequest.serializer)
          ..add(CreateSampleReceiptRequest.serializer)
          ..add(CreateSampleRequest.serializer)
          ..add(CreateTechnicalRequirementRequest.serializer)
          ..add(CreateTestRecordRequest.serializer)
          ..add(CurrentUser.serializer)
          ..add(CurrentUserSession.serializer)
          ..add(DashboardStats.serializer)
          ..add(DashboardStatsFunnelByStage.serializer)
          ..add(DashboardStatsQualifiedRateByMaterial.serializer)
          ..add(DashboardStatsReportCountByStatus.serializer)
          ..add(DashboardStatsReportOutputByStatus.serializer)
          ..add(ErrorResponse.serializer)
          ..add(ExtFieldDef.serializer)
          ..add(ExtFieldDefSource.serializer)
          ..add(ExtFieldDefType.serializer)
          ..add(FlowAction.serializer)
          ..add(FlowActionRequest.serializer)
          ..add(FlowActionResult.serializer)
          ..add(FlowHistoryEntry.serializer)
          ..add(FlowStatus.serializer)
          ..add(FrontendBindMetaFrontendBindSnapshot.serializer)
          ..add(InspectionBrand.serializer)
          ..add(
            InspectionDictionaryListObjectParameterLinks200Response.serializer,
          )
          ..add(
            InspectionDictionaryListObjectStandardLinks200Response.serializer,
          )
          ..add(InspectionDictionaryListObjects200Response.serializer)
          ..add(InspectionDictionaryListParameters200Response.serializer)
          ..add(InspectionDictionaryListSpecialties200Response.serializer)
          ..add(
            InspectionDictionaryListSpecialtyObjectLinks200Response.serializer,
          )
          ..add(
            InspectionDictionaryListStandardParameterLinks200Response
                .serializer,
          )
          ..add(InspectionDictionaryListStandards200Response.serializer)
          ..add(InspectionDictionaryUnlinkObjectParameterRequest.serializer)
          ..add(InspectionDictionaryUnlinkObjectStandardRequest.serializer)
          ..add(InspectionGrade.serializer)
          ..add(InspectionModel.serializer)
          ..add(InspectionObject.serializer)
          ..add(InspectionParameter.serializer)
          ..add(InspectionParameterSourceType.serializer)
          ..add(InspectionReportName.serializer)
          ..add(InspectionSpec.serializer)
          ..add(InspectionSpecialty.serializer)
          ..add(InspectionStandard.serializer)
          ..add(InspectionStandardRole.serializer)
          ..add(InspectionStandardStatus.serializer)
          ..add(LoginRequest.serializer)
          ..add(LoginResponse.serializer)
          ..add(MaterialQualifiedRate.serializer)
          ..add(MenuNode.serializer)
          ..add(MyTenant.serializer)
          ..add(OAuthGrantType.serializer)
          ..add(OAuthResponseType.serializer)
          ..add(ObjectParameterLink.serializer)
          ..add(ObjectReportNameLink.serializer)
          ..add(ObjectStandardLink.serializer)
          ..add(ParamInterface.serializer)
          ..add(ParamInterfaceLink.serializer)
          ..add(ParamInterfacesListParamInterfaceLinks200Response.serializer)
          ..add(ParamInterfacesListParamInterfaces200Response.serializer)
          ..add(ParamInterfacesUnlinkParamInterfaceRequest.serializer)
          ..add(PermissionSet.serializer)
          ..add(QualificationLevel.serializer)
          ..add(ReceiptResult.serializer)
          ..add(ReceiptsListReceipts200Response.serializer)
          ..add(RefreshTokenRequest.serializer)
          ..add(ReportNameParameterLink.serializer)
          ..add(ReportNameStandardLink.serializer)
          ..add(ReportNamesListObjectReportNameLinks200Response.serializer)
          ..add(ReportNamesListReportNameParameterLinks200Response.serializer)
          ..add(ReportNamesListReportNameStandardLinks200Response.serializer)
          ..add(ReportNamesListReportNames200Response.serializer)
          ..add(ReportNamesUnlinkObjectReportNameRequest.serializer)
          ..add(ReportNamesUnlinkReportNameParameterRequest.serializer)
          ..add(ReportNamesUnlinkReportNameStandardRequest.serializer)
          ..add(RequirementComparison.serializer)
          ..add(RequirementJudgmentMode.serializer)
          ..add(RequirementValueType.serializer)
          ..add(RequirementVerificationStatus.serializer)
          ..add(Sample.serializer)
          ..add(SampleReceipt.serializer)
          ..add(SamplesListSamples200Response.serializer)
          ..add(SpecialtyObjectLink.serializer)
          ..add(SsoCallbackRequest.serializer)
          ..add(SsoRedirect.serializer)
          ..add(StandardParameterLink.serializer)
          ..add(SummaryColumn.serializer)
          ..add(SummaryData.serializer)
          ..add(SwitchTenantRequest.serializer)
          ..add(TechnicalRequirement.serializer)
          ..add(TestRecord.serializer)
          ..add(TestRecordsListTestRecords200Response.serializer)
          ..add(TestRecordsSetVerdictRequest.serializer)
          ..add(TokenStorageKeys.serializer)
          ..add(TokenStorageKeysAccessTokenEnum.serializer)
          ..add(TokenStorageKeysActiveTenantIdEnum.serializer)
          ..add(TokenStorageKeysPermissionsCacheEnum.serializer)
          ..add(TokenStorageKeysRefreshTokenEnum.serializer)
          ..add(UpdateCalculationMethodRequest.serializer)
          ..add(UpdateCatalogEntryRequest.serializer)
          ..add(UpdateContractRequest.serializer)
          ..add(UpdateInspectionObjectRequest.serializer)
          ..add(UpdateInspectionParameterRequest.serializer)
          ..add(UpdateInspectionReportNameRequest.serializer)
          ..add(UpdateInspectionSpecialtyRequest.serializer)
          ..add(UpdateInspectionStandardRequest.serializer)
          ..add(UpdateParamInterfaceRequest.serializer)
          ..add(UpdateSampleExtRequest.serializer)
          ..add(UpdateSampleReceiptRequest.serializer)
          ..add(UpdateSampleRequest.serializer)
          ..add(UpdateTechnicalRequirementRequest.serializer)
          ..add(UpdateTestRecordRequest.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(BackendConfig)]),
            () => ListBuilder<BackendConfig>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Contract)]),
            () => ListBuilder<Contract>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ExtFieldDef)]),
            () => ListBuilder<ExtFieldDef>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ExtFieldDef)]),
            () => ListBuilder<ExtFieldDef>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ExtFieldDef)]),
            () => ListBuilder<ExtFieldDef>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(InspectionBrand)]),
            () => ListBuilder<InspectionBrand>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(InspectionGrade)]),
            () => ListBuilder<InspectionGrade>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(InspectionModel)]),
            () => ListBuilder<InspectionModel>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(InspectionObject)]),
            () => ListBuilder<InspectionObject>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(InspectionParameter),
            ]),
            () => ListBuilder<InspectionParameter>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(InspectionReportName),
            ]),
            () => ListBuilder<InspectionReportName>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(InspectionSpec)]),
            () => ListBuilder<InspectionSpec>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(InspectionSpecialty),
            ]),
            () => ListBuilder<InspectionSpecialty>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(InspectionStandard),
            ]),
            () => ListBuilder<InspectionStandard>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MenuNode)]),
            () => ListBuilder<MenuNode>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MyTenant)]),
            () => ListBuilder<MyTenant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MyTenant)]),
            () => ListBuilder<MyTenant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(MyTenant)]),
            () => ListBuilder<MyTenant>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ObjectParameterLink),
            ]),
            () => ListBuilder<ObjectParameterLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ObjectReportNameLink),
            ]),
            () => ListBuilder<ObjectReportNameLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ObjectStandardLink),
            ]),
            () => ListBuilder<ObjectStandardLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ParamInterface)]),
            () => ListBuilder<ParamInterface>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ParamInterfaceLink),
            ]),
            () => ListBuilder<ParamInterfaceLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ReportNameParameterLink),
            ]),
            () => ListBuilder<ReportNameParameterLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ReportNameStandardLink),
            ]),
            () => ListBuilder<ReportNameStandardLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Sample)]),
            () => ListBuilder<Sample>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SampleReceipt)]),
            () => ListBuilder<SampleReceipt>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(SpecialtyObjectLink),
            ]),
            () => ListBuilder<SpecialtyObjectLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(StandardParameterLink),
            ]),
            () => ListBuilder<StandardParameterLink>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(FlowHistoryEntry)]),
            () => ListBuilder<FlowHistoryEntry>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(SummaryColumn)]),
            () => ListBuilder<SummaryColumn>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String),
              ]),
            ]),
            () => ListBuilder<BuiltMap<String, String>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(TestRecord)]),
            () => ListBuilder<TestRecord>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(String),
            ]),
            () => MapBuilder<String, String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
