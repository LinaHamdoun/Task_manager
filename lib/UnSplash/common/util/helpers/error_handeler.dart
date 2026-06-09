import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  final int statusCode;

  const Failure({required this.message, required this.statusCode});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, required super.statusCode});
}

mixin HandlingException {
  Future<Either<Failure, T>> wrapHandlingException<T>({
    required Future<T> Function() tryCall,
  }) async {
    try {
      final result = await tryCall();
      return Right(result);
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleDioError(error);
    } else {
      failure = ServerFailure(
        message: error.toString(),
        statusCode: ResponseCode.unknown,
      );
    }
  }

  Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return DataSource.connectTimeout.getFailure();

      case DioExceptionType.sendTimeout:
        return DataSource.sendTimeout.getFailure();

      case DioExceptionType.receiveTimeout:
        return DataSource.receiveTimeout.getFailure();

      case DioExceptionType.cancel:
        return DataSource.cancel.getFailure();

      case DioExceptionType.connectionError:
        return DataSource.noInternet.getFailure();

      case DioExceptionType.badResponse:
        return _handleResponseError(error);

      case DioExceptionType.unknown:
      default:
        return DataSource.unknown.getFailure();
    }
  }

  Failure _handleResponseError(DioException error) {
    final statusCode = error.response?.statusCode ?? ResponseCode.unknown;
    final data = error.response?.data;

    final message = _extractErrorMessage(data);

    switch (statusCode) {
      case 400:
        return ServerFailure(
          message: message.isNotEmpty ? message : "badRequest",
          statusCode: 400,
        );

      case 401:
        return ServerFailure(
          message: message.isNotEmpty ? message : "Unauthorized",
          statusCode: 401,
        );

      case 403:
        return ServerFailure(
          message: message.isNotEmpty ? message : "Forbidden",
          statusCode: 403,
        );

      case 404:
        return ServerFailure(
          message: message.isNotEmpty ? message : "Not Found",
          statusCode: 404,
        );

      case 405:
        return ServerFailure(
          message: message.isNotEmpty ? message : "Method Not Allowed",
          statusCode: 405,
        );

      case 409:
        return ServerFailure(
          message: message.isNotEmpty ? message : "Conflict",
          statusCode: 409,
        );

      case 422:
        return ServerFailure(message: message, statusCode: 422);

      case 429:
        return ServerFailure(
          message: "Too many requests (Rate limit exceeded)",
          statusCode: 429,
        );

      case 500:
        return ServerFailure(
          message: message.isNotEmpty ? message : "Internal Server Error",
          statusCode: 500,
        );

      case 502:
      case 503:
      case 504:
        return ServerFailure(
          message: "Server unavailable",
          statusCode: statusCode,
        );

      default:
        return ServerFailure(message: message, statusCode: statusCode);
    }
  }

  String _extractErrorMessage(dynamic data) {
    try {
      if (data == null) return "Unknown error";

      if (data is String) return data;

      if (data is Map<String, dynamic>) {
        // Most common APIs
        if (data['message'] != null) return data['message'];

        if (data['error'] != null) return data['error'];

        if (data['error_description'] != null) {
          return data['error_description'];
        }

        if (data['errors'] != null) {
          final errors = data['errors'];

          if (errors is List && errors.isNotEmpty) {
            return errors.first.toString();
          }

          if (errors is Map) {
            return errors.values.first.toString();
          }
        }
      }

      return data.toString();
    } catch (_) {
      return "Error parsing response";
    }
  }
}

enum DataSource {
  connectTimeout,
  sendTimeout,
  receiveTimeout,
  cancel,
  noInternet,
  unknown,
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.connectTimeout:
        return ServerFailure(
          message: "Connection timeout",
          statusCode: ResponseCode.connectTimeout,
        );

      case DataSource.sendTimeout:
        return ServerFailure(
          message: "Send timeout",
          statusCode: ResponseCode.sendTimeout,
        );

      case DataSource.receiveTimeout:
        return ServerFailure(
          message: "Receive timeout",
          statusCode: ResponseCode.receiveTimeout,
        );

      case DataSource.cancel:
        return ServerFailure(
          message: "Request cancelled",
          statusCode: ResponseCode.cancel,
        );

      case DataSource.noInternet:
        return ServerFailure(
          message: "No internet connection",
          statusCode: ResponseCode.noInternet,
        );

      case DataSource.unknown:
      default:
        return ServerFailure(
          message: "Unexpected error",
          statusCode: ResponseCode.unknown,
        );
    }
  }
}

class ResponseCode {
  static const int success = 200;

  static const int badRequest = 400;
  static const int unAuthorized = 401;
  static const int forBidden = 403;
  static const int notFound = 404;
  static const int methodNotAllowed = 405;
  static const int conflict = 409;
  static const int unprocessable = 422;
  static const int tooManyRequests = 429;
  static const int internalServerError = 500;

  static const int connectTimeout = -1;
  static const int sendTimeout = -2;
  static const int receiveTimeout = -3;
  static const int cancel = -4;
  static const int noInternet = -5;
  static const int unknown = -6;
}
