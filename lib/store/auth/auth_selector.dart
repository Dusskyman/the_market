import 'package:redux/redux.dart';
import 'package:the_market/models/auth/login_dto/login_dto.dart';
import 'package:the_market/models/auth/register_dto/register_dto.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_action.dart';

abstract class AuthSelectors {
  static void Function(LoginDto loginDto) login(Store<AppState> store) {
    return (loginDto) => store.dispatch(LoginAction(loginDto: loginDto));
  }

  static void Function(RegisterDto registerDto) register(Store<AppState> store) {
    return (registerDto) => store.dispatch(RegisterAction(registerDto: registerDto));
  }

  static void Function() logout(Store<AppState> store) {
    return () => store.dispatch(LogoutAction());
  }

  static UserDto? user(Store<AppState> store) {
    return store.state.authState.userDto;
  }

  static void Function(UserDto user) saveUserToState(Store<AppState> store) {
    return (user) => store.dispatch(SaveUserAction(userDto: user));
  }

  static void Function(UserDto user) saveUserToStore(Store<AppState> store) {
    return (user) => store.dispatch(SaveUserToStoreAction(userDto: user));
  }

  static bool hasConnection(Store<AppState> store) {
    return store.state.authState.hasConnection;
  }
}
