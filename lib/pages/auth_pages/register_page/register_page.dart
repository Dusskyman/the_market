import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/conts.dart';
import 'package:the_market/layouts/main_layout.dart';
import 'package:the_market/models/auth/register_dto/register_dto.dart';
import 'package:the_market/pages/auth_pages/auth_vm.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/theme/app_image.dart';
import 'package:the_market/utils/validation_manager.dart';
import 'package:the_market/widgets/buttons/general_button.dart';
import 'package:the_market/widgets/mixins/check_activity_button_mixin.dart';
import 'package:the_market/widgets/textfields/app_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with TextFieldsHelperMixin {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confPassController = TextEditingController();
  @override
  void initState() {
    super.initState();
    addControllers([
      TextControllerModel(
        controller: _usernameController,
        validator: ValidationManager.validateUsername,
      ),
      TextControllerModel(
        controller: _passController,
        validator: ValidationManager.passwordValidation,
      ),
      TextControllerModel(
        controller: _confPassController,
        validator: (text) {
          if (text != _passController.text) {
            return 'Passwords doesn\'t match';
          }
        },
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthVM>(
      converter: (store) => AuthVM.fromStore(store),
      builder: (context, vm) => MainLayout(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 64.0,
                    height: 64.0,
                    child: Image.asset(AppImage.blackCart),
                  ),
                  const Text(
                    AppConsts.theMarket,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    AppTextField(
                      controller: _usernameController,
                      hintText: AppConsts.username,
                      validator: ValidationManager.validateUsername,
                    ),
                    const SizedBox(height: 16.0),
                    AppTextField(
                      controller: _passController,
                      hintText: AppConsts.password,
                      needObscure: true,
                      validator: ValidationManager.passwordValidation,
                    ),
                    const SizedBox(height: 16.0),
                    AppTextField(
                      controller: _confPassController,
                      hintText: AppConsts.confirmPassword,
                      needObscure: true,
                      validator: (text) {
                        if (text != _passController.text) {
                          return 'Passwords doesn\'t match';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 32.0),
                    InkWell(
                      onTap: () {
                        RouteService.instance.pop();
                      },
                      child: const Text(
                        'Already have an account? Login!',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GeneralButton(
                isActive: isValidate,
                child: const Text(
                  AppConsts.register,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  vm.register(RegisterDto(
                    username: _usernameController.text,
                    password: _passController.text,
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
