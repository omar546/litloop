import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('connection Error with ApiServer');

      case DioExceptionType.unknown:
        return ServerFailure('Opps There was an Error, Please try again!');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response!.statusCode!,
          e.response!.data,
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please try later!');
    } else {
      return ServerFailure('Opps There was an Error, Please try again!');
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);
}
