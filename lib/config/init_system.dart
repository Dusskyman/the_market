import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redux/redux.dart';
import 'package:the_market/network/interceptors/connection_intercepter.dart';
import 'package:the_market/network/interceptors/error_intercepter.dart';
import 'package:the_market/network/interceptors/header_interceptor.dart';
import 'package:the_market/store/application/app_state.dart';

Future<void> initSystem(Store<AppState> store) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
    ),
  );

  HeaderInterceptor.instance.init(
    onError: (DioError error) async {},
    onRequest: (RequestOptions options) async {},
    onResponse: (dynamic t) async {},
  );

  ErrorInterceptor.instance.init(
    onErrorCallback: (DioError error) {},
  );
  ConnectionIntercepter.instance.init(
    showConnectionError: () {},
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
