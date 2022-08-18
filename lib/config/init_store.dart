import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/store/application/app_state.dart';

Store<AppState> initStore() {
  return Store<AppState>(
    AppState.getReducer,
    initialState: AppState.initial(),
    middleware: [
      EpicMiddleware(AppState.getAppEpic),
    ],
  );
}
