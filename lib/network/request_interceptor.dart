import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/login_controller.dart';
import '../data_sources/shared_prefs.dart';
import '../main.dart';

const Map<String, String> requestHeaders = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

class HeadersInterceptor extends Interceptor {
  HeadersInterceptor(this._headers);

  final Map<String, String> _headers;

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!options.headers.containsKey('Content-Type')) {
      options.headers.addAll(_headers);
    }
    final token = SharedPrefs.accessToken;

    if (token != null && !options.headers.containsKey('Authorization')) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      container.read(isAuthorizedProvider.notifier).state = false;
      // final refreshed = await _regenerateAccessToken();
      // if (refreshed) {
      //   err.requestOptions.headers['Authorization'] =
      //       'Bearer ${SharedPrefs.accessToken}';
      //   return handler.resolve(await _retry(err.requestOptions));
      // }
    }
    return handler.next(err);
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return Dio().request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  Future<bool> _regenerateAccessToken() async {
    try {
      final refreshToken = SharedPrefs.refreshToken;
      if (refreshToken == null) {
        SharedPrefs.clearAccount();
        return false;
      }

      final String? newAccessToken =
          await refreshAccessToken(refreshToken: SharedPrefs.refreshToken!);

      if (newAccessToken != null) {
        await SharedPrefs.saveAccessToken(newAccessToken);
        return true;
      } else {
        SharedPrefs.clearAccount();
        return false;
      }
    } on DioError {
      return false;
    } catch (e) {
      return false;
    }
  }

  Future refreshAccessToken({required String refreshToken}) async {
    //todo: refresh access token
  }
}

final headersInterceptor =
    Provider<Interceptor>((ref) => HeadersInterceptor(requestHeaders));

final isAuthorizedProvider = StateProvider.autoDispose<bool>((ref) {
  return true;
});
