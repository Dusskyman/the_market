import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:the_market/application/application_vm.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/services/connection_service/connection_service.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/store/initialization/init_action.dart';
import 'package:the_market/utils/logger.dart';

class Application extends StatefulWidget {
  final Store<AppState> store;

  const Application({required this.store});

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  AppRouter get _router => RouteService.instance;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        Log.e('APPLICATION:', 'App in resumed');
        break;
      case AppLifecycleState.inactive:
        Log.e('APPLICATION:', 'App in inactive');
        break;
      case AppLifecycleState.paused:
        Log.e('APPLICATION:', 'App in paused');
        break;
      case AppLifecycleState.detached:
        Log.e('APPLICATION:', 'App in detached');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: StoreConnector<AppState, ApplicationVM>(
        onInit: (store) async {
          ConnectionService.instance.init(store: store);
          await Future.delayed(const Duration(seconds: 3));
          store.dispatch(InitAction());
        },
        onDispose: (store) {
          ConnectionService.instance.dispose();
        },
        converter: ApplicationVM.init,
        builder: (BuildContext context, ApplicationVM vm) {
          return MaterialApp.router(
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1.0,
                ),
                child: child!,
              );
            },
            debugShowCheckedModeBanner: false,
            routerDelegate: _router.delegate(),
            routeInformationParser: _router.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
