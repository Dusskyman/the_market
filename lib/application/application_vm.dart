import 'package:redux/redux.dart';
import 'package:the_market/store/application/app_state.dart';

class ApplicationVM {
  const ApplicationVM();

  static ApplicationVM init(Store<AppState> store) {
    return const ApplicationVM();
  }

  static ApplicationVM fromStore(Store<AppState> store) {
    return ApplicationVM();
  }
}
