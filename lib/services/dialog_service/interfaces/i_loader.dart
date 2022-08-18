import 'package:flutter/material.dart';
import 'package:the_market/services/dialog_service/dialog_service.dart';
import 'package:the_market/store/loader/loader_state.dart';

class ILoader extends IDialog {
  final String? title;
  final LoaderKey loaderKey;

  ILoader({
    required this.loaderKey,
    this.title,
  });

  Widget get widget {
    return Container();
  }

  @override
  Future<void> show(DisplayFunction displayFunction) async {}
}
