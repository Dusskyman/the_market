import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:the_market/repository/local_storage/token_storage/token_storage.dart';

const String _token = 'Token ';

class HeaderInterceptor extends Interceptor {
  HeaderInterceptor._privateConstructor();

  static final HeaderInterceptor _instance = HeaderInterceptor._privateConstructor();

  static HeaderInterceptor get instance => _instance;

  late Dio _dio;
  late bool _isAuthorized = false;
  late TokenStorage _tokenStorage;
  late bool _isFirstTokenError = true;

  Logger get _logger => Logger('[$runtimeType]');

  late Future Function(RequestOptions) onRequestFunction;
  late Future Function(Response) onResponseFunction;
  late Future Function(DioError) onErrorFunction;

  void set(
    Dio dio,
    TokenStorage tokenStorage, {
    required bool isAuthorized,
  }) {
    _dio = dio;
    _isAuthorized = isAuthorized;
    _tokenStorage = tokenStorage;
  }

  void init({
    required Future Function(DioError error) onError,
    required Future Function(RequestOptions options) onRequest,
    required Future Function(Response response) onResponse,
  }) {
    onRequestFunction = onRequest;
    onResponseFunction = onResponse;
    onErrorFunction = onError;
    return;
  }

  @override
  Future onRequest(RequestOptions options, handler) async {
    _logger.info('onRequest options: $options');
    _logger.info('onRequest body: ${options.data}');
    options.contentType = 'application/json; charset=UTF-8';
    String? tokenData = await _tokenStorage.getToken();
    if (tokenData != null) {
      _logger.info('onRequest token: $tokenData');
      try {
        tokenData = await _tokenStorage.getToken();
      } catch (e) {
        _logger.warning('Token warning: $e');
      }
      if (_isAuthorized) {
        options.headers['Authorization'] = _token + tokenData!;
      }
    }
    options.headers['connection'] = 'keep-alive';
    options.headers['keep-alive'] = 'timeout=5, max=1000';

    _logger.info('onRequest headers: ${options.headers}');
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioError error, handler) async {
    _logger.info('onError error: $error');
    if (_isTokenExpiredError(error) && _isFirstTokenError) {
      _isFirstTokenError = false;
      final String? tokenData = await _tokenStorage.getToken();
      if (tokenData != null) _isFirstTokenError = true;
      _logger.info('token RENEWED, retry request');
      return super.onError(error, handler);
    } else if (_isTokenExpiredError(error)) {
      _isFirstTokenError = true;
      _logger.info('token RENEWED, logout');
    }

    return onErrorFunction(error);
  }

  @override
  Future onResponse(Response response, handler) async {
    if (response.data != null &&
        response.data.toString().isNotEmpty &&
        response.headers.map[Headers.contentTypeHeader]?.first.startsWith('text') == true) {
      try {
        response.data = jsonDecode(response.data as String);
      } catch (e) {
        _logger.warning('HEADER INTERCEPTOR onResponse error: $e');
      }
      return handler.next(response);
    }
    return handler.next(response);
  }

  Future retryRequest(RequestOptions requestOptions) {
    _logger.info('retryRequest $requestOptions');
    return _dio.request<dynamic>(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data: requestOptions.data,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      queryParameters: requestOptions.queryParameters,
    );
  }

  bool _isTokenExpiredError(DioError error) {
    return error.response?.data == 'Token is expired!';
  }
}
