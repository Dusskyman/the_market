import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/network/services/impl/market_service.dart';
import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/loader/loader_actions.dart';
import 'package:the_market/store/loader/loader_state.dart';
import 'package:the_market/store/market/market_action.dart';
import 'package:the_market/utils/logger.dart';
import 'package:the_market/widgets/dialogs/loader/loader_dialog.dart';

class GetProductsEpic extends BaseEpic<GetProductsAction> {
  @override
  Stream epic(GetProductsAction action, EpicStore<AppState> store) async* {
    try {
      yield* Stream.value(StartLoadingAction(loader: const LoaderDialog(loaderKey: LoaderKey.global)));
      final MarketService service = MarketService.instance();
      final List<ProductDto> result = await service.getProducts();
      yield* Stream.value(SaveProductsAction(products: result));
      yield* Stream.value(StopLoadingAction(loaderKey: LoaderKey.global));
    } catch (error) {
      yield* Stream.value(StopLoadingAction(loaderKey: LoaderKey.global));
      Log.e('GetProductsEpic error: ', error);
    }
  }
}
