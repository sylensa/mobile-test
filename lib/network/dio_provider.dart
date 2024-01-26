import 'package:dio/dio.dart';
import 'package:netafim_mobile/network/request_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final Dio dio = Dio(BaseOptions(
  connectTimeout: const Duration(minutes: 2),
  receiveTimeout: const Duration(minutes: 2),
))
  ..interceptors.add(HeadersInterceptor(requestHeaders))
  ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 250));
