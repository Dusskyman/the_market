import 'package:flutter/material.dart';
import 'package:the_market/config/app_router.dart';

class OverlayService {
  OverlayService._();
  static final OverlayService _instance = OverlayService._();
  static OverlayService get instance => _instance;
  AppRouter get _router => RouteService.instance;

  OverlayEntry? overlayEntry;

  void showOverlay(
    Widget widget, {
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    if (overlayEntry == null) {
      overlayEntry = OverlayEntry(
        builder: (ctx) => Positioned(
          top: top ?? AppBar().preferredSize.height + kToolbarHeight,
          left: left ?? 0,
          right: right ?? 0,
          bottom: bottom,
          child: widget,
        ),
      );
      _router.navigatorKey.currentState!.overlay!.insert(overlayEntry!);
    }
  }

  void closeOverlay() {
    if (overlayEntry != null) {
      overlayEntry!.remove();
      overlayEntry = null;
    }
  }
}
