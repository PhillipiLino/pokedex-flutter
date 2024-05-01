import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex/core/client_interface.dart';

class DioClient implements IClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio();
  }

  @override
  Future get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    final Response response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );

    return response.data;
  }

  @override
  Future post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    final Response response = await _dio.post(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
      data: jsonEncode(body),
    );

    return response.data;
  }
}
