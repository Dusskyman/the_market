import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/repository/local_storage/token_storage/token_storage.dart';
import 'package:the_market/repository/local_storage/user_storage/user_storage.dart';
import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_action.dart';
import 'package:the_market/utils/logger.dart';

class LogoutEpic extends BaseEpic<LogoutAction> {
  @override
  Stream epic(LogoutAction action, EpicStore<AppState> store) async* {
    try {
      Log.e('Logout error:', 'Start');
      await UserStorage.instance().clearUser();
      await TokenStorage.instance().clearToken();
      yield* Stream.value(CleanUserAction());
      Log.e('Logout error:', 'Complete');
    } catch (error) {
      Log.e('Logout error: ', error);
    }
  }
}
