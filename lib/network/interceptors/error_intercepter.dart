import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor._privateConstructor();

  static final ErrorInterceptor _instance = ErrorInterceptor._privateConstructor();

  static ErrorInterceptor get instance => _instance;

  Logger get logger => Logger('${_instance.runtimeType}');

  void init({required void Function(DioError) onErrorCallback}) {
    this.onErrorCallback = onErrorCallback;
  }

  late void Function(DioError) onErrorCallback;

  @override
  Future<dynamic> onError(DioError error, ErrorInterceptorHandler handler) async {
    logger.warning('---------||${error.error}\n\n ${error.response?.data ?? ''}\n\n');

    onErrorCallback(error);
    return super.onError(error, handler);
  }
}
