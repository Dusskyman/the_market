import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:the_market/widgets/buttons/general_button.dart';

class AppTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final String? Function(String)? validator;
  final void Function(bool)? errorCallback;
  final bool setStateOnValidation;
  final bool? forceValidate;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final int? maxlines;
  final int? minlines;
  final int? maxSymbols;
  final bool needObscure;

  const AppTextField({
    this.controller,
    this.hintText = '',
    this.onChanged,
    this.onEditingComplete,
    this.forceValidate,
    this.validator,
    this.errorCallback,
    this.setStateOnValidation = false,
    this.focusNode,
    this.keyboardType,
    this.maxlines = 1,
    this.maxSymbols,
    this.minlines,
    this.needObscure = false,
    Key? key,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool validate;
  late bool hasError;
  late FocusNode focusNode;
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    validate = widget.forceValidate ?? false;
    hasError = false;
    focusNode = widget.focusNode ?? FocusNode();

    focusNode.addListener(() {
      setState(() {
        validate = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      minLines: widget.minlines,
      maxLines: widget.maxlines,
      maxLength: widget.maxSymbols,
      controller: widget.controller,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      keyboardType: widget.keyboardType,
      focusNode: focusNode,
      validator: (String? text) {
        if (validate) {
          if (widget.validator != null) {
            final String? validation = widget.validator!.call(text ?? '');
            if (validation != null && !hasError) {
              hasError = true;

              if (widget.errorCallback != null) widget.errorCallback!(hasError);
              if (widget.setStateOnValidation) setState(() {});
            } else if (validation == null && hasError) {
              hasError = false;
              if (widget.errorCallback != null) widget.errorCallback!(hasError);
              if (widget.setStateOnValidation) setState(() {});
            }

            return validation;
          }
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: !widget.needObscure
            ? null
            : obscureText
                ? GeneralButton(
                    width: 16.0,
                    height: 16.0,
                    color: Colors.transparent,
                    child: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black54,
                    ),
                    onTap: () {
                      setState(() {
                        obscureText = false;
                      });
                    })
                : GeneralButton(
                    color: Colors.transparent,
                    width: 16.0,
                    height: 16.0,
                    child: const Icon(Icons.remove_red_eye),
                    onTap: () {
                      setState(() {
                        obscureText = true;
                      });
                    }),
        alignLabelWithHint: true,
        labelText: widget.hintText,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        isDense: true,
        border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(4.0)),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
