import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:the_market/models/auth/auth_response_dto/auth_response_dto.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/network/api/api.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Api.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //GET
  @GET('/api/products/')
  Future<List<ProductDto>> getProducts();

  @GET('/api/reviews/{product_id}')
  Future<List<ReviewDto>> getReviews(@Path('product_id') int productId);

  //POST
  @POST('/api/login/')
  Future<AuthResponseDto> login(@Body() Map<String, dynamic> body);

  @POST('/api/register/')
  Future<AuthResponseDto> register(@Body() Map<String, dynamic> body);

  @POST('/api/reviews/{product_id}')
  Future<String> postReview(@Path('product_id') int productId, @Body() Map<String, dynamic> body);
}
