import 'package:redux/redux.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/store/auth/auth_action.dart';
import 'package:the_market/store/auth/auth_state.dart';
import 'package:the_market/utils/logger.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, SaveUserAction>(_saveUser),
  TypedReducer<AuthState, CleanUserAction>(_cleanUser),
  TypedReducer<AuthState, CheckConnectionAction>(_checkConnection),
]);

AuthState _saveUser(AuthState state, SaveUserAction action) {
  return state.copyWith(userDto: action.userDto);
}

AuthState _cleanUser(AuthState state, CleanUserAction action) {
  return state.copyWith(userDto: const UserDto());
}

AuthState _checkConnection(AuthState state, CheckConnectionAction action) {
  Log.i('Connection changed', '${action.connection}');
  return state.copyWith(hasConnection: action.connection);
}
