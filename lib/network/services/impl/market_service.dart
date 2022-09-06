import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/write_review_dto/write_review_dto.dart';
import 'package:the_market/network/dio_config.dart';
import 'package:the_market/network/repository/market_repository.dart';
import 'package:the_market/network/services/imarket_service.dart';

class MarketService implements IMarketService {
  MarketService._();

  static final MarketService _marketService = MarketService._();

  static MarketService instance() => _marketService;
  @override
  Future<List<ProductDto>> getProducts() {
    return MarketRepository(DioConfig.instance.provideAuthorizedDio()).getProducts();
  }

  @override
  Future<List<ReviewDto>> getReview({required int id}) {
    return MarketRepository(DioConfig.instance.provideAuthorizedDio()).getReview(id: id);
  }

  @override
  Future<String?> writeReview({required int id, required WriteReviewDto writeReviewDto}) {
    return MarketRepository(DioConfig.instance.provideAuthorizedDio()).writeReview(id: id, writeReviewDto: writeReviewDto);
  }
}
