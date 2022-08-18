import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_market/layouts/loader_layout/loader_layout.dart';

class MainLayout extends StatefulWidget {
  final Color? background;
  final Widget child;
  final Widget? bottomSheet;
  final bool? isNeedDrawer;
  final PreferredSizeWidget? appbar;
  final Widget? floatingActionButton;
  final bool isNeedScroll;
  final bool isOpenKeyboard;
  final List<DeviceOrientation> allowedOrientations;
  final Future<bool> Function()? onWillPop;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const MainLayout({
    required this.child,
    this.background,
    this.appbar,
    this.floatingActionButton,
    this.isNeedScroll = false,
    this.isNeedDrawer = false,
    this.isOpenKeyboard = false,
    this.bottomSheet,
    this.allowedOrientations = const [DeviceOrientation.portraitUp],
    this.onWillPop,
    this.floatingActionButtonLocation,
    Key? key,
  }) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations(widget.allowedOrientations);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.allowedOrientations.length > 1) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoaderLayout(
      child: WillPopScope(
        onWillPop: widget.onWillPop ??
            () async {
              return true;
            },
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            floatingActionButtonLocation: widget.floatingActionButtonLocation ?? FloatingActionButtonLocation.startFloat,
            floatingActionButton: widget.floatingActionButton,
            backgroundColor: widget.background ?? Colors.white,
            appBar: widget.appbar,
            body: widget.child,
          ),
        ),
      ),
    );
  }
}
