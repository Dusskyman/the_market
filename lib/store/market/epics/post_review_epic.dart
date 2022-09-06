import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/network/services/impl/market_service.dart';
import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/market/market_action.dart';
import 'package:the_market/utils/logger.dart';

class PostReviewEpic extends BaseEpic<WriteReviewsAction> {
  @override
  Stream epic(WriteReviewsAction action, EpicStore<AppState> store) async* {
    try {
      final MarketService service = MarketService.instance();
      final String? result = await service.writeReview(id: action.id, writeReviewDto: action.writeReviewDto);
      if (result != null) {
        yield* Stream.value(GetReviewAction(action.id));
      }
    } catch (error) {
      Log.e('PostReviewEpic error: ', error);
    }
  }
}
