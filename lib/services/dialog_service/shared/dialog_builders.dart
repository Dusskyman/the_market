import 'package:flutter/material.dart';

class DialogBuilders {
  static Future<void> unclosedDialogBuilder({
    required BuildContext context,
    required Widget widget,
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black54,
      builder: (BuildContext ctx) => widget,
    );
  }

  static Future<void> fullScreenDialogBuilder({
    required BuildContext context,
    required Widget widget,
  }) async {
    return await showDialog(
      context: context,
      builder: (BuildContext ctx) => widget,
    );
  }

  static Future<void> defaultDialogBuilder({
    required BuildContext context,
    required Widget widget,
  }) async {
    return await showDialog(
      context: context,
      barrierColor: Colors.black54,
      builder: (BuildContext ctx) => widget,
    );
  }

  static Future<void> darkDialogBuilder({
    required BuildContext context,
    required Widget widget,
  }) async {
    return await showDialog(
      context: context,
      barrierColor: Colors.black54,
      builder: (BuildContext ctx) => widget,
    );
  }

  static Future<void> modalBottomSheetBuilder({
    required BuildContext context,
    required Widget widget,
  }) {
    return showModalBottomSheet<dynamic>(
      backgroundColor: Colors.black54,
      context: context,
      elevation: 0.0,
      clipBehavior: Clip.hardEdge,
      builder: (BuildContext ctx) => widget,
    );
  }
}
