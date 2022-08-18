import 'package:redux/redux.dart';
import 'package:the_market/models/auth/login_dto/login_dto.dart';
import 'package:the_market/models/auth/register_dto/register_dto.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_selector.dart';

class AuthVM {
  final Function(LoginDto) login;
  final Function(RegisterDto) register;
  final Function() logout;
  final UserDto? user;
  final Function(UserDto) saveUserToState;
  final Function(UserDto) saveUserToStore;
  final bool hasConnection;

  const AuthVM({
    required this.login,
    required this.register,
    required this.logout,
    required this.user,
    required this.saveUserToState,
    required this.saveUserToStore,
    required this.hasConnection,
  });

  static AuthVM fromStore(Store<AppState> store) {
    return AuthVM(
      login: AuthSelectors.login(store),
      register: AuthSelectors.register(store),
      logout: AuthSelectors.logout(store),
      user: AuthSelectors.user(store),
      saveUserToState: AuthSelectors.saveUserToState(store),
      saveUserToStore: AuthSelectors.saveUserToStore(store),
      hasConnection: AuthSelectors.hasConnection(store),
    );
  }
}
