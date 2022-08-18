import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:the_market/store/application/app_state.dart';

abstract class BaseEpic<T> extends EpicClass<AppState> {
  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<T>().switchMap((action) => epic(action, store));
  }

  Stream<dynamic> epic(T action, EpicStore<AppState> store);
}
