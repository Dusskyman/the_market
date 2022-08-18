import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/epics/clean_user_data_epic.dart';
import 'package:the_market/store/auth/epics/log_out_epic.dart';
import 'package:the_market/store/auth/epics/register_epic.dart';
import 'package:the_market/store/auth/epics/save_user_to_store_epic.dart';
import 'login_epic.dart';

final authEpic = combineEpics<AppState>([
  LoginEpic(),
  RegisterEpic(),
  SaveUserToStoreEpic(),
  CleanUserDataEpic(),
  LogoutEpic(),
]);
