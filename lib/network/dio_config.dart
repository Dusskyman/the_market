import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_market/network/api/api.dart';
import 'package:the_market/network/interceptors/connection_intercepter.dart';
import 'package:the_market/network/interceptors/error_intercepter.dart';
import 'package:the_market/network/interceptors/header_interceptor.dart';
import 'package:the_market/repository/local_storage/token_storage/token_storage.dart';

const String authorized = 'authorized';
const String unauthorized = 'unauthorized';

class DioConfig {
  DioConfig._privateConstructor();

  static final DioConfig _instance = DioConfig._privateConstructor();

  static DioConfig get instance => _instance;

  Interceptor get _errorInterceptor => ErrorInterceptor.instance;

  Interceptor get _connectionInterceptor => ConnectionIntercepter.instance;

  Interceptor get _headerInterceptor => HeaderInterceptor.instance;

  BaseOptions get _dioOptions {
    return BaseOptions(
      connectTimeout: 10000,
      receiveTimeout: 10000,
      sendTimeout: 10000,
    );
  }

  Dio provideAuthorizedDio() => _getDio(true);

  Dio provideUnAuthorizedDio() => _getDio(false);

  Dio _getDio(
    bool isAuthorized,
  ) {
    final dio = Dio(_dioOptions);
    HeaderInterceptor.instance.set(
      dio,
      TokenStorage.instance(),
      isAuthorized: isAuthorized,
    );
    dio.options.baseUrl = Api.baseUrl;
    final interceptors = [
      _headerInterceptor,
      _connectionInterceptor,
      _errorInterceptor,
      PrettyDioLogger(requestHeader: true, requestBody: true),
    ];
    if (isAuthorized) {}

    return dio
      ..interceptors.addAll([
        ...interceptors,
      ]);
  }
}
