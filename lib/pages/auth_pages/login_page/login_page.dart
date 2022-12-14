import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/config/app_routes.dart';
import 'package:the_market/conts.dart';
import 'package:the_market/layouts/main_layout.dart';
import 'package:the_market/models/auth/login_dto/login_dto.dart';
import 'package:the_market/pages/auth_pages/auth_vm.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/theme/app_image.dart';
import 'package:the_market/theme/app_text_styles.dart';
import 'package:the_market/utils/validation_manager.dart';
import 'package:the_market/widgets/buttons/general_button.dart';
import 'package:the_market/widgets/mixins/check_activity_button_mixin.dart';
import 'package:the_market/widgets/textfields/app_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TextFieldsHelperMixin {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
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
                    style: AppTextStyles.textStyle20bold,
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
                    const SizedBox(height: 32.0),
                    InkWell(
                      onTap: () {
                        RouteService.instance.navigateNamed(AppRoutes.routeRegister);
                      },
                      child: Text(
                        'Doesn\'t have account? Register!',
                        style: AppTextStyles.textStyle14w400.copyWith(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text('Or', style: AppTextStyles.textStyle14bold),
                    const SizedBox(height: 16.0),
                    InkWell(
                      onTap: () {
                        RouteService.instance.navigateNamed(AppRoutes.routeMarket);
                      },
                      child: Text(
                        'Login anonymously',
                        style: AppTextStyles.textStyle14w400.copyWith(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GeneralButton(
                isActive: isValidate,
                child: Text(
                  AppConsts.login,
                  style: AppTextStyles.textStyle14w400.copyWith(color: Colors.white),
                ),
                onTap: () {
                  vm.login(LoginDto(
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
