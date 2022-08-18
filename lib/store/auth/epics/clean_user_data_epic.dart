import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/repository/local_storage/user_storage/user_storage.dart';
import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_action.dart';
import 'package:the_market/utils/logger.dart';

class CleanUserDataEpic extends BaseEpic<CleanUserAction> {
  @override
  Stream epic(CleanUserAction action, EpicStore<AppState> store) async* {
    try {
      await UserStorage.instance().clearUser();
    } catch (error) {
      Log.e('CleanUserDataEpic error: ', error);
    }
  }
}
