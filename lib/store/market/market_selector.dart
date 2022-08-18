import 'package:redux/redux.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/models/product/review/write_review_dto/write_review_dto.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/market/market_action.dart';

abstract class MarketSelectors {
  static void Function() getProducts(Store<AppState> store) {
    return () => store.dispatch(GetProductsAction());
  }

  static List<ProductDto>? products(Store<AppState> store) {
    return store.state.marketState.products;
  }

  static List<ProductDto>? savedProducts(Store<AppState> store) {
    return store.state.marketState.savedProducts;
  }

  static void Function(int id) getReviews(Store<AppState> store) {
    return (id) => store.dispatch(GetReviewAction(id));
  }

  static void Function() cleanReviews(Store<AppState> store) {
    return () => store.dispatch(SaveReviewsAction(reviews: []));
  }

  static List<ReviewDto>? reviews(Store<AppState> store) {
    return store.state.marketState.reviews;
  }

  static void Function(int id, WriteReviewDto writeReviewDto) writeReview(Store<AppState> store) {
    return (int id, WriteReviewDto writeReviewDto) => store.dispatch(WriteReviewsAction(id: id, writeReviewDto: writeReviewDto));
  }

  static void Function(ProductDto productDto) saveProduct(Store<AppState> store) {
    return (productDto) => store.dispatch(SaveProductToStorageAction(productDto: productDto));
  }

  static void Function(ProductDto productDto) deleteProduct(Store<AppState> store) {
    return (productDto) => store.dispatch(DeleteProductToStorageAction(productDto: productDto));
  }

  static bool Function(int id) containsValue(Store<AppState> store) {
    return (id) {
      if (store.state.marketState.savedProducts!.isEmpty) {
        return false;
      }
      final bool contain =
          store.state.marketState.savedProducts?.firstWhere((element) => element.id == id, orElse: () => const ProductDto()).id != null;
      return contain;
    };
  }
}
