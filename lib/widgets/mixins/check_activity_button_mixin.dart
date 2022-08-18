import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class TextControllerModel {
  final TextEditingController controller;
  final String? Function(String) _validator;

  const TextControllerModel({
    required this.controller,
    required String? Function(String) validator,
  }) : _validator = validator;

  bool get hasValidationError => _validator(controller.text) != null;

  @override
  String toString() {
    return 'TextControllerModel{controller: $controller, validator: $_validator}';
  }
}

mixin TextFieldsHelperMixin<T extends StatefulWidget> on State<T> {
  late bool isValidate;
  late bool withdrawalFormValid;

  final List<String> keyNames = [];
  final BehaviorSubject<bool> _behaviorSubject = BehaviorSubject();
  final List<TextControllerModel> _controllers = [];

  @override
  void initState() {
    super.initState();
    isValidate = false;
    withdrawalFormValid = false;
    _behaviorSubject.addStream(Stream<bool>.periodic(Duration(milliseconds: 300), (value) => !_isDisabled));

    _behaviorSubject.distinct().listen((bool value) {
      isValidate = value;
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _behaviorSubject.drain().then((value) => _behaviorSubject.close());
    super.dispose();
  }

  void addControllers(List<TextControllerModel> controllers) => _controllers.addAll(controllers);

  bool get _isDisabled {
    for (TextControllerModel controllerModel in _controllers) {
      if (controllerModel.controller.text.isEmpty || controllerModel.hasValidationError) {
        return true;
      }
    }
    return false;
  }
}
