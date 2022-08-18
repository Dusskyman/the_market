import 'package:dio/dio.dart';
import 'package:the_market/services/connection_service/connection_service.dart';

class ConnectionIntercepter extends Interceptor {
  ConnectionIntercepter._privateConstructor();

  static final ConnectionIntercepter _instance = ConnectionIntercepter._privateConstructor();

  static ConnectionIntercepter get instance => _instance;

  late final void Function()? showConnectionError;

  void init({required void Function()? showConnectionError}) {
    this.showConnectionError = showConnectionError;
  }

  @override
  Future<dynamic> onRequest(RequestOptions options, handler) async {
    final bool hasConnection = await ConnectionService.instance.hasConnection();

    if (hasConnection) {
      return super.onRequest(options, handler);
    }

    if (showConnectionError != null) {
      showConnectionError!();
    }

    return super.onRequest(options, handler);
  }
}
