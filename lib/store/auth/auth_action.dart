import 'package:the_market/models/auth/login_dto/login_dto.dart';
import 'package:the_market/models/auth/register_dto/register_dto.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/shared/base_action.dart';

class LoginAction extends BaseAction {
  LoginDto loginDto;
  LoginAction({required this.loginDto}) : super(type: 'LoginAction');
}

class RegisterAction extends BaseAction {
  RegisterDto registerDto;
  RegisterAction({required this.registerDto}) : super(type: 'RegisterAction');
}

class SaveUserAction extends BaseAction {
  UserDto userDto;
  SaveUserAction({required this.userDto}) : super(type: 'SaveUserAction');
}

class SaveUserToStoreAction extends BaseAction {
  UserDto userDto;
  SaveUserToStoreAction({required this.userDto}) : super(type: 'SaveUserToStoreAction');
}

class CleanUserAction extends BaseAction {
  CleanUserAction() : super(type: 'CleanUserAction');
}

class LogoutAction extends BaseAction {
  LogoutAction() : super(type: 'LogoutAction');
}

class CheckConnectionAction extends BaseAction {
  bool connection;
  CheckConnectionAction({required this.connection}) : super(type: 'CheckConnectionAction');
}
