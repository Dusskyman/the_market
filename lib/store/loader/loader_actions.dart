import 'package:the_market/services/dialog_service/interfaces/i_loader.dart';
import 'package:the_market/shared/base_action.dart';
import 'package:the_market/store/loader/loader_state.dart';

class ShimmerLoadingAction extends BaseAction {
  final bool isLoading;

  ShimmerLoadingAction({required this.isLoading}) : super(type: 'ShimmerLoadingAction');
}

class StartLoadingAction extends BaseAction {
  final ILoader loader;

  StartLoadingAction({
    required this.loader,
  }) : super(type: 'StartLoadingAction');
}

class StopLoadingAction extends BaseAction {
  final LoaderKey loaderKey;

  StopLoadingAction({
    required this.loaderKey,
  }) : super(type: 'StopLoadingAction');
}
