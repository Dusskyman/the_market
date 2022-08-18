import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/models/product/review/review_dto/review_dto.dart';
import 'package:the_market/network/services/impl/market_service.dart';
import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/market/market_action.dart';
import 'package:the_market/utils/logger.dart';

class GetReviewEpic extends BaseEpic<GetReviewAction> {
  @override
  Stream epic(GetReviewAction action, EpicStore<AppState> store) async* {
    try {
      final MarketService service = MarketService.instance();
      final List<ReviewDto> result = await service.getReview(id: action.id);
      yield* Stream.value(SaveReviewsAction(reviews: result));
    } catch (error) {
      Log.e('GetReviewEpic error: ', error);
    }
  }
}
