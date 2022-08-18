import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/conts.dart';
import 'package:the_market/layouts/main_layout.dart';
import 'package:the_market/models/auth/user_dto.dart/user_dto.dart';
import 'package:the_market/pages/auth_pages/auth_vm.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/utils/logger.dart';
import 'package:the_market/widgets/buttons/general_button.dart';
import 'package:the_market/widgets/textfields/app_text_field.dart';
import 'package:the_market/widgets/user_icon/user_icon.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  late final TextEditingController nameController = TextEditingController();
  late final TextEditingController surnameController = TextEditingController();
  late final TextEditingController usernameController = TextEditingController();
  UserDto? userDto = UserDto();
  final ImagePicker imagePicker = ImagePicker();
  XFile? file;

  Future<XFile?> _getImage(ImageSource imageSource) async {
    var image = await imagePicker.pickImage(source: imageSource);
    userDto = userDto?.copyWith(imagePath: image?.path ?? userDto?.imagePath);
    setState(() {});
    return image;
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthVM>(
      onInitialBuild: (vm) {
        userDto = vm.user;
        setState(() {});
      },
      converter: (store) => AuthVM.fromStore(store),
      builder: (context, vm) {
        return MainLayout(
          appbar: AppBar(backgroundColor: Colors.orangeAccent),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: UserIcon(
                      imagePath: userDto?.imagePath,
                      onTap: () async {
                        file = await _getImage(ImageSource.gallery);
                      },
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  IgnorePointer(
                    child: AppTextField(
                      hintText: AppConsts.username,
                      controller: usernameController..text = userDto?.username ?? '',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  AppTextField(
                    hintText: AppConsts.name,
                    controller: nameController..text = userDto?.name ?? '',
                    onChanged: (text) {
                      userDto = userDto!.copyWith(name: text);
                    },
                  ),
                  const SizedBox(height: 16.0),
                  AppTextField(
                    hintText: AppConsts.surname,
                    controller: surnameController..text = userDto?.surname ?? '',
                    onChanged: (text) {
                      userDto = userDto!.copyWith(surname: text);
                    },
                  ),
                  const SizedBox(height: 64.0),
                  GeneralButton(
                    child: const Text('Save'),
                    onTap: () async {
                      if (file != null) {
                        final String path = await getApplicationDocumentsDirectory().then((value) => value.path);
                        String imagePath = '$path/userImage.png';
                        userDto = userDto?.copyWith(imagePath: imagePath);
                        await file?.saveTo(imagePath);
                      }
                      setState(() {
                        Log.i('User Data', userDto.toString());
                      });
                      vm.saveUserToState(userDto!);
                      vm.saveUserToStore(userDto!);
                      RouteService.instance.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
