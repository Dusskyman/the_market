import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:logging/logging.dart';
import 'package:redux/redux.dart';
import 'package:the_market/services/overlay_service/overlay_service.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_action.dart';
import 'package:the_market/store/market/market_action.dart';
import 'package:the_market/widgets/dialogs/no_internet_connection_overlay.dart';
import 'i_connection_service.dart';

class ConnectionService implements IConnectionService {
  ConnectionService._();

  static ConnectionService? _instance;
  static ConnectionService get instance => _instance ??= ConnectionService._();

  Logger get _logger => Logger('$runtimeType');
  late final StreamSubscription subscription;
  late final Stream<Future<bool>> connectionStream;

  @override
  Future<void> init({Store<AppState>? store}) async {
    bool isPopUpShowed = false;
    connectionStream = Stream.periodic(const Duration(seconds: 1), (i) async => await hasConnection());
    subscription = connectionStream.listen((event) async {
      final temp = await hasConnection();
      if (!temp && !isPopUpShowed) {
        OverlayService.instance.showOverlay(
          const NoInternetConnectionDialogWidget(),
          top: 72.0,
        );
        _logger.info('Connection status: $temp');
        isPopUpShowed = true;
        if (store != null) {
          store.dispatch(CheckConnectionAction(connection: temp));
        }
      } else {
        if (temp && isPopUpShowed) {
          OverlayService.instance.closeOverlay();
          _logger.info('Connection status: $temp');
          isPopUpShowed = false;
          if (store != null) {
            store.dispatch(CheckConnectionAction(connection: temp));
            store.dispatch(GetProductsAction());
          }
        }
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
  }

  @override
  Future<bool> hasConnection() async {
    final hasConnection = await Connectivity().checkConnectivity();
    return hasConnection != ConnectivityResult.none;
  }
}
