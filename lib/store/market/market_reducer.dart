import 'package:redux/redux.dart';
import 'package:the_market/store/market/market_action.dart';
import 'package:the_market/store/market/market_state.dart';
import 'package:the_market/utils/logger.dart';

final marketReducer = combineReducers<MarketState>(
  [
    TypedReducer<MarketState, SaveProductsAction>(_saveProducts),
    TypedReducer<MarketState, SaveReviewsAction>(_saveReviews),
    TypedReducer<MarketState, SaveProductToStateAction>(_saveProduct),
    TypedReducer<MarketState, DeleteProductToStateAction>(_deleteProduct),
  ],
);

MarketState _saveProducts(MarketState state, SaveProductsAction action) {
  return state.copyWith(products: action.products);
}

MarketState _saveReviews(MarketState state, SaveReviewsAction action) {
  return state.copyWith(reviews: action.reviews);
}

MarketState _saveProduct(MarketState state, SaveProductToStateAction action) {
  Log.i('Current products:', '${action.productDto}');
  return state.copyWith(savedProducts: action.productDto);
}

MarketState _deleteProduct(MarketState state, DeleteProductToStateAction action) {
  return state.copyWith(savedProducts: action.productDto);
}
