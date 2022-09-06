import 'package:dio/dio.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/models/product/review/write_review_dto/write_review_dto.dart';
import 'package:the_market/network/repository/base_repository.dart';

class MarketRepository extends BaseRepository {
  MarketRepository(Dio dio) : super(dio);
  Future<List<ProductDto>> getProducts() async {
    final List<ProductDto> response = await api.getProducts();
    return response;
  }

  Future<List<ReviewDto>> getReview({required int id}) async {
    final List<ReviewDto> response = await api.getReviews(id);
    return response;
  }

  Future<String?> writeReview({required int id, required WriteReviewDto writeReviewDto}) async {
    final String response = await api.postReview(id, writeReviewDto.toJson());
    return response;
  }
}
