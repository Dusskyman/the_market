import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/models/product/product_dto/product_dto.dart';
import 'package:the_market/repository/local_storage/product_storage/product_storage.dart';
import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/loader/loader_actions.dart';
import 'package:the_market/store/loader/loader_state.dart';
import 'package:the_market/store/market/market_action.dart';
import 'package:the_market/utils/logger.dart';

class SaveProductsEpic extends BaseEpic<SaveProductToStorageAction> {
  @override
  Stream epic(SaveProductToStorageAction action, EpicStore<AppState> store) async* {
    try {
      final bool contain = store.state.marketState.savedProducts!.isNotEmpty &&
          store.state.marketState.savedProducts?.firstWhere((element) => element.id == action.productDto.id, orElse: () => const ProductDto()).id !=
              null;
      if (!contain) {
        final tempList = store.state.marketState.savedProducts;
        tempList!.add(action.productDto);
        await ProductStorage.instance().clearProducts();
        ProductStorage.instance().saveProducts(tempList);
        yield* Stream.value(SaveProductToStateAction(productDto: tempList));
      }
    } catch (error) {
      yield* Stream.value(StopLoadingAction(loaderKey: LoaderKey.global));
      Log.e('SaveProductsEpic error: ', error);
    }
  }
}
