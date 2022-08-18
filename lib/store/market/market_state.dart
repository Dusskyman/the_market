import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';

class MarketState {
  List<ProductDto>? products;
  List<ProductDto>? savedProducts;
  List<ReviewDto>? reviews;
  MarketState({
    this.products,
    this.reviews,
    this.savedProducts,
  });

  factory MarketState.initial() {
    return MarketState(
      products: [],
      reviews: [],
      savedProducts: [],
    );
  }

  MarketState copyWith({
    List<ProductDto>? products,
    List<ReviewDto>? reviews,
    List<ProductDto>? savedProducts,
  }) {
    return MarketState(
      products: products ?? this.products,
      reviews: reviews ?? this.reviews,
      savedProducts: savedProducts ?? this.savedProducts,
    );
  }
}
