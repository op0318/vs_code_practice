import 'dart:io';

import 'package:dio/dio.dart';
import 'package:connectivity/connectivity.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  @override
  Future onError(DioException err) async {
    if (_shoulRetry(err)) {}
    return err;
  }

  bool _shoulRetry(DioException err) {
    return err.type == DioExceptionType.unknown &&
        err.error != null &&
        err.error is SocketException;
  }
}
