import 'package:flutter/material.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/models/auth/auth_response_dto/auth_response_dto.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/network/services/impl/auth_service.dart';
import 'package:the_market/repository/local_storage/token_storage/token_storage.dart';
import 'package:the_market/shared/base_epic.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/auth/auth_action.dart';
import 'package:the_market/utils/logger.dart';
import 'package:the_market/widgets/dialogs/error_dialog/error_dialog_widget.dart';

class LoginEpic extends BaseEpic<LoginAction> {
  @override
  Stream epic(LoginAction action, EpicStore<AppState> store) async* {
    try {
      final AuthService _service = AuthService.instance();
      final AuthResponseDto result = await _service.login(loginDto: action.loginDto);
      if (result.success ?? false) {
        await TokenStorage.instance().clearToken();
        await TokenStorage.instance().saveToken(result.token!);
        yield* Stream.value(SaveUserToStoreAction(userDto: UserDto(username: action.loginDto.username)));
        yield* Stream.value(SaveUserAction(userDto: UserDto(username: action.loginDto.username)));
        RouteService.instance.push(const MarketPageRoute());
      } else if (result.message != null) {
        showDialog(context: RouteService.instance.navigatorKey.currentContext!, builder: (context) => ErrorDialogWidget(title: result.message!));
      }
    } catch (error) {
      Log.e('LoginEpic error: ', error);
    }
  }
}
