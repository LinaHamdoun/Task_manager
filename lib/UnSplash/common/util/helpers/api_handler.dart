import 'package:dio/dio.dart';

import '../../const/typedef.dart';

mixin HandlingApiManager {
  Future<T> wrapHandlingApi<T>({
    required Future<Response> Function() tryCall,
    required FromJson<T> jsonConvert,
  }) async {
    try {
      final response = await tryCall();

      final statusCode = response.statusCode ?? 0;

      if (statusCode >= 200 && statusCode < 300) {
        return jsonConvert(response.data);
      }

      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
      );
    } catch (error) {
      rethrow;
    }
  }
}
