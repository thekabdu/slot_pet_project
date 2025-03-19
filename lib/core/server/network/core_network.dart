import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final logger = Logger();

Future<Dio> createAuthorizedHttpClient(String baseUrl) async {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 22),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );

  if (kDebugMode) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          logger.i("REQUEST: ${options.method} ${options.uri}");
          logger.d("Headers: ${options.headers}");
          if (options.data != null) {
            logger.d("Body: ${options.data}");
          }
          return handler.next(options);
        },
        onResponse: (response, handler) {
          logger.i("RESPONSE [${response.statusCode}]: ${response.data}");
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          logger.e("ERROR [${e.response?.statusCode}]: ${e.message}", error: e);
          return handler.next(e);
        },
      ),
    );
  }

  (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
    return HttpClient()
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  };

  return dio;
}
