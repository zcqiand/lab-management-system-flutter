//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:lab_management_system_flutter/generated/api_util.dart';
import 'package:lab_management_system_flutter/generated/model/create_technical_requirement_request.dart';
import 'package:lab_management_system_flutter/generated/model/error_response.dart';
import 'package:lab_management_system_flutter/generated/model/requirement_verification_status.dart';
import 'package:lab_management_system_flutter/generated/model/technical_requirement.dart';
import 'package:lab_management_system_flutter/generated/model/update_technical_requirement_request.dart';

class TechnicalRequirementsApi {
  final Dio _dio;

  final Serializers _serializers;

  const TechnicalRequirementsApi(this._dio, this._serializers);

  /// technicalRequirementsCreateTechnicalRequirement
  ///
  ///
  /// Parameters:
  /// * [createTechnicalRequirementRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TechnicalRequirement] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TechnicalRequirement>>
  technicalRequirementsCreateTechnicalRequirement({
    required CreateTechnicalRequirementRequest
    createTechnicalRequirementRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/technical-requirements';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(CreateTechnicalRequirementRequest);
      _bodyData = _serializers.serialize(
        createTechnicalRequirementRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TechnicalRequirement? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(TechnicalRequirement),
            ) as TechnicalRequirement;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TechnicalRequirement>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// technicalRequirementsDeleteTechnicalRequirement
  ///
  ///
  /// Parameters:
  /// * [inspectionObjectCode]
  /// * [inspectionParameterCode]
  /// * [judgmentStandardCode]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> technicalRequirementsDeleteTechnicalRequirement({
    required String inspectionObjectCode,
    required String inspectionParameterCode,
    required String judgmentStandardCode,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/technical-requirements/{inspectionObjectCode}/{inspectionParameterCode}/{judgmentStandardCode}'
        .replaceAll(
          '{'
          r'inspectionObjectCode'
          '}',
          encodeQueryParameter(
            _serializers,
            inspectionObjectCode,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'inspectionParameterCode'
          '}',
          encodeQueryParameter(
            _serializers,
            inspectionParameterCode,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'judgmentStandardCode'
          '}',
          encodeQueryParameter(
            _serializers,
            judgmentStandardCode,
            const FullType(String),
          ).toString(),
        );
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// technicalRequirementsGetTechnicalRequirement
  ///
  ///
  /// Parameters:
  /// * [inspectionObjectCode]
  /// * [inspectionParameterCode]
  /// * [judgmentStandardCode]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TechnicalRequirement] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TechnicalRequirement>>
  technicalRequirementsGetTechnicalRequirement({
    required String inspectionObjectCode,
    required String inspectionParameterCode,
    required String judgmentStandardCode,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/technical-requirements/{inspectionObjectCode}/{inspectionParameterCode}/{judgmentStandardCode}'
        .replaceAll(
          '{'
          r'inspectionObjectCode'
          '}',
          encodeQueryParameter(
            _serializers,
            inspectionObjectCode,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'inspectionParameterCode'
          '}',
          encodeQueryParameter(
            _serializers,
            inspectionParameterCode,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'judgmentStandardCode'
          '}',
          encodeQueryParameter(
            _serializers,
            judgmentStandardCode,
            const FullType(String),
          ).toString(),
        );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TechnicalRequirement? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(TechnicalRequirement),
            ) as TechnicalRequirement;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TechnicalRequirement>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// technicalRequirementsListTechnicalRequirements
  ///
  ///
  /// Parameters:
  /// * [inspectionObjectCode]
  /// * [inspectionParameterCode]
  /// * [judgmentStandardCode]
  /// * [verificationStatus]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TechnicalRequirement>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TechnicalRequirement>>>
  technicalRequirementsListTechnicalRequirements({
    String? inspectionObjectCode,
    String? inspectionParameterCode,
    String? judgmentStandardCode,
    RequirementVerificationStatus? verificationStatus,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/technical-requirements';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (inspectionObjectCode != null)
        r'inspectionObjectCode': encodeQueryParameter(
          _serializers,
          inspectionObjectCode,
          const FullType(String),
        ),
      if (inspectionParameterCode != null)
        r'inspectionParameterCode': encodeQueryParameter(
          _serializers,
          inspectionParameterCode,
          const FullType(String),
        ),
      if (judgmentStandardCode != null)
        r'judgmentStandardCode': encodeQueryParameter(
          _serializers,
          judgmentStandardCode,
          const FullType(String),
        ),
      if (verificationStatus != null)
        r'verificationStatus': encodeQueryParameter(
          _serializers,
          verificationStatus,
          const FullType(RequirementVerificationStatus),
        ),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<TechnicalRequirement>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [
                FullType(TechnicalRequirement),
              ]),
            ) as BuiltList<TechnicalRequirement>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TechnicalRequirement>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// technicalRequirementsUpdateTechnicalRequirement
  ///
  ///
  /// Parameters:
  /// * [inspectionObjectCode]
  /// * [inspectionParameterCode]
  /// * [judgmentStandardCode]
  /// * [updateTechnicalRequirementRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TechnicalRequirement] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TechnicalRequirement>>
  technicalRequirementsUpdateTechnicalRequirement({
    required String inspectionObjectCode,
    required String inspectionParameterCode,
    required String judgmentStandardCode,
    required UpdateTechnicalRequirementRequest
    updateTechnicalRequirementRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/technical-requirements/{inspectionObjectCode}/{inspectionParameterCode}/{judgmentStandardCode}'
        .replaceAll(
          '{'
          r'inspectionObjectCode'
          '}',
          encodeQueryParameter(
            _serializers,
            inspectionObjectCode,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'inspectionParameterCode'
          '}',
          encodeQueryParameter(
            _serializers,
            inspectionParameterCode,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'judgmentStandardCode'
          '}',
          encodeQueryParameter(
            _serializers,
            judgmentStandardCode,
            const FullType(String),
          ).toString(),
        );
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(UpdateTechnicalRequirementRequest);
      _bodyData = _serializers.serialize(
        updateTechnicalRequirementRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TechnicalRequirement? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(TechnicalRequirement),
            ) as TechnicalRequirement;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TechnicalRequirement>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
