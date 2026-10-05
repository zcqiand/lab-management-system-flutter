import 'package:dio/dio.dart';

/// Dio 构建缝：测试经 providers override 整体替换，不走此函数。
Dio buildDio({required String baseUrl, required Interceptor interceptor}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );
  dio.interceptors.add(interceptor);
  return dio;
}
