// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://smktesting.herokuapp.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<ProductDto>> getProducts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ProductDto>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/products/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => ProductDto.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<ReviewDto>> getReviews(productId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ReviewDto>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/reviews/${productId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => ReviewDto.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<AuthResponseDto> login(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponseDto>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/login/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponseDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthResponseDto> register(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponseDto>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/register/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponseDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<String> postReview(productId, body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/api/reviews/${productId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
