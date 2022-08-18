import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:the_market/application/application.dart';
import 'package:the_market/config/init_store.dart';
import 'package:the_market/config/init_system.dart';
import 'package:the_market/config/logger.dart';
import 'package:the_market/services/storage.dart';
import 'package:the_market/store/application/app_state.dart';

void main() async {
  initLogger();
  Storage.instance().init();
  final Store<AppState> store = initStore();
  await initSystem(store);
  runApp(Application(store: store));
}
