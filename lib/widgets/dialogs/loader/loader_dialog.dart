import 'package:flutter/material.dart';
import 'package:the_market/services/dialog_service/interfaces/i_dialog.dart';
import 'package:the_market/services/dialog_service/interfaces/i_loader.dart';
import 'package:the_market/services/dialog_service/shared/dialog_builders.dart';
import 'package:the_market/store/loader/loader_state.dart';
import 'package:the_market/widgets/dialogs/loader/loader.dart';

class LoaderDialog implements ILoader {
  @override
  final LoaderKey loaderKey;

  @override
  final String? title;

  const LoaderDialog({
    required this.loaderKey,
    this.title,
  });

  @override
  Widget get widget => LoaderWidget();

  Future<void> _builder(BuildContext context) async {
    return await DialogBuilders.defaultDialogBuilder(
      widget: widget,
      context: context,
    );
  }

  @override
  Future<void> show(DisplayFunction display) async => await display(_builder);
}
