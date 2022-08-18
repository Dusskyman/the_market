import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/store/auth/auth_reducer.dart';
import 'package:the_market/store/auth/auth_state.dart';
import 'package:the_market/store/auth/epics/index.dart';
import 'package:the_market/store/initialization/init_epic.dart';
import 'package:the_market/store/loader/loader_reducer.dart';
import 'package:the_market/store/loader/loader_state.dart';
import 'package:the_market/store/market/epics/index.dart';
import 'package:the_market/store/market/market_reducer.dart';
import 'package:the_market/store/market/market_state.dart';

/// Class [AppState], is the main [state] application.
/// It keeps 3, smaller states.
/// Namely, [dialogState], [storageState], [loaderState].
/// First [dialogState], this variable stores the state of dialogs, it is used to call various dialogs.
/// Second [storageState], the primary state, stores all information from all states.
/// The third [loaderState] is required to loading.
class AppState {
  final AuthState authState;
  final LoaderState loaderState;
  final MarketState marketState;

  AppState({
    required this.authState,
    required this.loaderState,
    required this.marketState,
  });

  ///All states are initialized in the [initial] function.
  factory AppState.initial() {
    return AppState(
      authState: AuthState.initial(),
      loaderState: LoaderState.initial(),
      marketState: MarketState.initial(),
    );
  }

  ///The [getReducer] function is the main Reducer in which you call Reducer, all other states.
  static AppState getReducer(AppState state, dynamic action) {
    return AppState(
      authState: authReducer(state.authState, action),
      loaderState: loaderReducer(state.loaderState, action),
      marketState: marketReducer(state.marketState, action),
    );
  }

  ///In [getAppEpic], call the main epic.
  static final getAppEpic = combineEpics<AppState>([
    authEpic,
    marketEpic,
    InitEpic(),
  ]);
}
