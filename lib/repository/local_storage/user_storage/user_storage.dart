import 'package:logging/logging.dart';
import 'package:the_market/conts.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/services/istorage.dart';
import 'package:the_market/services/storage.dart';

class UserStorage {
  final IStorage _storage;

  UserStorage._(this._storage);

  static final UserStorage _userStorage = UserStorage._(Storage.instance());

  static UserStorage instance() => _userStorage;

  static const String _userKey = AppConsts.userData;

  Logger get logger => Logger('[$runtimeType]');

  Future<void> saveUser(UserDto userDto) async {
    logger.info('SAVING USER TO STORAGE ${userDto.toString()}');

    await _storage.save(_userKey, userDto.toJson());
  }

  Future<UserDto?> getUser() async {
    try {
      final userMap = await _storage.take<Map<dynamic, dynamic>>(_userKey);
      if (userMap != null) {
        logger.info('<getUser> => Object: $userMap');
        final Map<String, dynamic> tempMap = {};
        userMap.forEach((key, value) {
          tempMap.addAll({key.toString(): value});
        });
        return UserDto.fromJson(tempMap);
      }
    } catch (e) {
      logger.warning('<getUser> => error: $e');
      return null;
    }
  }

  Future<void> clearUser() async {
    try {
      await _storage.delete(_userKey);
      logger.info('Token was removed from storage');
    } catch (e) {
      logger.warning('<getToken> => error: $e');
    }
  }
}
