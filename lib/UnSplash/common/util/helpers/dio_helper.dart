
import 'package:dio/dio.dart';
import 'package:state_magement/UnSplash/core/config/app_config.dart';

import 'logger_interceptor.dart';

class DioNetwork {
  final List<Interceptor> interceptors;
  final String baseUrl;
  final Dio dio;
  DioNetwork({this.interceptors = const [], required this.baseUrl})
    : dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          receiveDataWhenStatusError: true,
          connectTimeout: const Duration(seconds: 15),
          headers: {
            'Authorization': 'Client-ID ${ApIKey.apIKey}',
            'Accept-Version': 'v1',
            'Content-Type': 'application/json',
          },
        ),
      ) {
    dio.interceptors.addAll([LoggerInterceptor(),
      ...interceptors]);
  }

  Future<Response> deleteData({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    return await dio.delete(
      endPoint,
      data: data,
      queryParameters: params,
      options: Options(headers: headers),
    );
  }

  Future<Response> putData({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    return await dio.put(
      endPoint,
      data: data,
      queryParameters: params,

      options: Options(headers: headers),
    );
  }

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
  }) async {
    return await dio.get(
      endPoint,
      queryParameters: params,
      data: data,
      options: Options(headers: headers),
    );
  }

  Future<Response> postData({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    required Map<String, dynamic>? data,
  }) async {
    return await dio.post(
      endPoint,
      queryParameters: params,
      data: data,
      options: Options(headers: headers),
    );

  }

  Future<Response> patchData({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    required Map<String, dynamic>? data,
  }) async {
    return await dio.patch(
      endPoint,
      queryParameters: params,
      data: data,
      options: Options(headers: headers),
    );

  }

}

