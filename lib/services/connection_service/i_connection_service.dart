abstract class IConnectionService {
  void init();
  void dispose();
  Future<bool> hasConnection();
}
