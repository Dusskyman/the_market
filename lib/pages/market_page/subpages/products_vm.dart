import 'package:redux/redux.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/models/product/review/write_review_dto/write_review_dto.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_selector.dart';
import 'package:the_market/store/market/market_selector.dart';

class ProductsVM {
  final Function() getProducts;
  final List<ProductDto>? products;
  final Function() cleanReviews;
  final Function(int id) getReviews;
  final List<ReviewDto>? reviews;
  final Function(int id, WriteReviewDto writeReviewDto) writeReview;
  final UserDto? user;
  final List<ProductDto>? savedProducts;
  final Function(ProductDto productDto) saveProduct;
  final Function(ProductDto productDto) deleteProducts;
  final bool Function(int id) containsValue;
  final bool hasConnection;

  const ProductsVM({
    required this.getProducts,
    required this.products,
    required this.cleanReviews,
    required this.getReviews,
    required this.reviews,
    required this.writeReview,
    required this.user,
    required this.savedProducts,
    required this.saveProduct,
    required this.deleteProducts,
    required this.containsValue,
    required this.hasConnection,
  });

  static ProductsVM fromStore(Store<AppState> store) {
    return ProductsVM(
      getProducts: MarketSelectors.getProducts(store),
      products: MarketSelectors.products(store),
      cleanReviews: MarketSelectors.cleanReviews(store),
      getReviews: MarketSelectors.getReviews(store),
      reviews: MarketSelectors.reviews(store),
      writeReview: MarketSelectors.writeReview(store),
      user: AuthSelectors.user(store),
      savedProducts: MarketSelectors.savedProducts(store),
      saveProduct: MarketSelectors.saveProduct(store),
      deleteProducts: MarketSelectors.deleteProduct(store),
      containsValue: MarketSelectors.containsValue(store),
      hasConnection: AuthSelectors.hasConnection(store),
    );
  }
}
