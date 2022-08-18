import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/market/epics/delete_products_epic.dart';
import 'package:the_market/store/market/epics/get_product_epic.dart';
import 'package:the_market/store/market/epics/get_reviews_epic.dart';
import 'package:the_market/store/market/epics/post_review_epic.dart';
import 'package:the_market/store/market/epics/save_product_epic.dart';

final marketEpic = combineEpics<AppState>([
  GetProductsEpic(),
  GetReviewEpic(),
  PostReviewEpic(),
  DeleteProductsEpic(),
  SaveProductsEpic(),
]);
