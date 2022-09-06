import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/models/product/review/write_review_dto/write_review_dto.dart';

abstract class IMarketService {
  Future<List<ProductDto>> getProducts();
  Future<List<ReviewDto>> getReview({required int id});
  Future<String?> writeReview({required int id, required WriteReviewDto writeReviewDto});
}
