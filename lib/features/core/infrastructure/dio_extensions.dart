import 'dart:io';

import 'package:dio/dio.dart';

extension DioErrorX on DioError {
  bool get isNoConnectionError {
    return type == DioErrorType.connectionError && error is SocketException;
  }

  bool get isConnectionTimeout {
    return type == DioErrorType.connectionTimeout ||
        type == DioErrorType.receiveTimeout ||
        type == DioErrorType.sendTimeout;
  }
}
