import 'package:logging/logging.dart';
import 'package:the_market/conts.dart';
import 'package:the_market/services/istorage.dart';
import 'package:the_market/services/storage.dart';

class TokenStorage {
  final IStorage _storage;

  TokenStorage._(this._storage);

  static final TokenStorage _tokenStorage = TokenStorage._(Storage.instance());

  static TokenStorage instance() => _tokenStorage;

  static const String _tokenKey = AppConsts.token;

  Logger get logger => Logger('[$runtimeType]');

  Future<void> saveToken(String tokenData) async {
    logger.info('SAVING TOKEN TO STORAGE ${tokenData.toString()}');

    await _storage.save(_tokenKey, tokenData);
  }

  Future<String?> getToken() async {
    try {
      return _storage.take<String>(_tokenKey);
    } catch (e) {
      logger.warning('<getToken> => error: $e');
      return null;
    }
  }

  Future<void> clearToken() async {
    try {
      await _storage.delete(_tokenKey);
      logger.info('Token was removed from storage');
    } catch (e) {
      logger.warning('<getToken> => error: $e');
    }
  }
}
