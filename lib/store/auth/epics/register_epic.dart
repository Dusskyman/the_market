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

class RegisterEpic extends BaseEpic<RegisterAction> {
  @override
  Stream epic(RegisterAction action, EpicStore<AppState> store) async* {
    try {
      final AuthService service = AuthService.instance();
      final AuthResponseDto result = await service.register(registerDto: action.registerDto);
      if (result.success ?? false) {
        await TokenStorage.instance().clearToken();
        await TokenStorage.instance().saveToken(result.token!);
        yield* Stream.value(SaveUserToStoreAction(userDto: UserDto(username: action.registerDto.username)));
        yield* Stream.value(SaveUserAction(userDto: UserDto(username: action.registerDto.username)));
        RouteService.instance.push(const MarketPageRoute());
        RouteService.instance.push(const UserDetailsPageRoute());
      } else {}
    } catch (error) {
      Log.e('RegisterEpic error: ', error);
    }
  }
}
