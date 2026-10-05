//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:lab_management_system_flutter/generated/serializers.dart';
import 'package:lab_management_system_flutter/generated/auth/api_key_auth.dart';
import 'package:lab_management_system_flutter/generated/auth/basic_auth.dart';
import 'package:lab_management_system_flutter/generated/auth/bearer_auth.dart';
import 'package:lab_management_system_flutter/generated/auth/oauth.dart';
import 'package:lab_management_system_flutter/generated/api/auth_api.dart';
import 'package:lab_management_system_flutter/generated/api/calculation_methods_api.dart';
import 'package:lab_management_system_flutter/generated/api/contracts_api.dart';
import 'package:lab_management_system_flutter/generated/api/frontend_bind_meta_api.dart';
import 'package:lab_management_system_flutter/generated/api/inspection_catalog_api.dart';
import 'package:lab_management_system_flutter/generated/api/inspection_dictionary_api.dart';
import 'package:lab_management_system_flutter/generated/api/param_interfaces_api.dart';
import 'package:lab_management_system_flutter/generated/api/receipts_api.dart';
import 'package:lab_management_system_flutter/generated/api/report_names_api.dart';
import 'package:lab_management_system_flutter/generated/api/samples_api.dart';
import 'package:lab_management_system_flutter/generated/api/summary_api.dart';
import 'package:lab_management_system_flutter/generated/api/technical_requirements_api.dart';
import 'package:lab_management_system_flutter/generated/api/test_records_api.dart';

class LabSharedGenerated {
  static const String basePath = r'https://api.example.com';

  final Dio dio;
  final Serializers serializers;

  LabSharedGenerated({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : this.serializers = serializers ?? standardSerializers,
       this.dio =
           dio ??
           Dio(
             BaseOptions(
               baseUrl: basePathOverride ?? basePath,
               connectTimeout: const Duration(milliseconds: 5000),
               receiveTimeout: const Duration(milliseconds: 3000),
             ),
           ) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is OAuthInterceptor,
      ) as OAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the OAuth token associated with the given [name].
  ///
  /// If no [OAuthInterceptor] is registered or no token exists for the given
  /// [name], this method has no effect.
  void removeOAuthToken(String name) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is OAuthInterceptor,
      ) as OAuthInterceptor).tokens.remove(name);
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BearerAuthInterceptor,
      ) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the bearer authentication token associated with the given [name].
  ///
  /// If no [BearerAuthInterceptor] is registered or no token exists for the
  /// given [name], this method has no effect.
  void removeBearerAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BearerAuthInterceptor,
      ) as BearerAuthInterceptor).tokens.remove(name);
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BasicAuthInterceptor,
      ) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(
        username,
        password,
      );
    }
  }

  /// Removes the basic authentication credentials associated with the given [name].
  ///
  /// If no [BasicAuthInterceptor] is registered or no credentials exist for the
  /// given [name], this method has no effect.
  void removeBasicAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (i) => i is BasicAuthInterceptor,
      ) as BasicAuthInterceptor).authInfo.remove(name);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (element) => element is ApiKeyAuthInterceptor,
      ) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Removes the API key associated with the given [name].
  ///
  /// If no [ApiKeyAuthInterceptor] is registered or no API key exists for the
  /// given [name], this method has no effect.
  void removeApiKey(String name) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
        (element) => element is ApiKeyAuthInterceptor,
      ) as ApiKeyAuthInterceptor).apiKeys.remove(name);
    }
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get CalculationMethodsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalculationMethodsApi getCalculationMethodsApi() {
    return CalculationMethodsApi(dio, serializers);
  }

  /// Get ContractsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ContractsApi getContractsApi() {
    return ContractsApi(dio, serializers);
  }

  /// Get FrontendBindMetaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FrontendBindMetaApi getFrontendBindMetaApi() {
    return FrontendBindMetaApi(dio, serializers);
  }

  /// Get InspectionCatalogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InspectionCatalogApi getInspectionCatalogApi() {
    return InspectionCatalogApi(dio, serializers);
  }

  /// Get InspectionDictionaryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InspectionDictionaryApi getInspectionDictionaryApi() {
    return InspectionDictionaryApi(dio, serializers);
  }

  /// Get ParamInterfacesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ParamInterfacesApi getParamInterfacesApi() {
    return ParamInterfacesApi(dio, serializers);
  }

  /// Get ReceiptsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReceiptsApi getReceiptsApi() {
    return ReceiptsApi(dio, serializers);
  }

  /// Get ReportNamesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportNamesApi getReportNamesApi() {
    return ReportNamesApi(dio, serializers);
  }

  /// Get SamplesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SamplesApi getSamplesApi() {
    return SamplesApi(dio, serializers);
  }

  /// Get SummaryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SummaryApi getSummaryApi() {
    return SummaryApi(dio, serializers);
  }

  /// Get TechnicalRequirementsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TechnicalRequirementsApi getTechnicalRequirementsApi() {
    return TechnicalRequirementsApi(dio, serializers);
  }

  /// Get TestRecordsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TestRecordsApi getTestRecordsApi() {
    return TestRecordsApi(dio, serializers);
  }
}
