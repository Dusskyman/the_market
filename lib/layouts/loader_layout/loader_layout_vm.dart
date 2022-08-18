import 'package:redux/redux.dart';
import 'package:the_market/services/dialog_service/interfaces/i_loader.dart';
import 'package:the_market/store/application/app_state.dart';

///[LoaderLayoutVM] is view model for loaders
///[loaders] contains list with loaders

class LoaderLayoutVM {
  final List<ILoader> loaders;

  const LoaderLayoutVM({
    required this.loaders,
  });

  static LoaderLayoutVM fromStore(Store<AppState> store) {
    return LoaderLayoutVM(
      loaders: store.state.loaderState.loaders!,
    );
  }
}
