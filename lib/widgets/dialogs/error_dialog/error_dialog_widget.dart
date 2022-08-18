import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_market/config/app_router.dart';
import 'package:the_market/pages/auth_pages/auth_vm.dart';
import 'package:the_market/store/application/app_state.dart';
import 'package:the_market/widgets/buttons/general_button.dart';

class ErrorDialogWidget extends StatelessWidget {
  final String title;

  const ErrorDialogWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthVM>(
      converter: (store) => AuthVM.fromStore(store),
      builder: (context, vm) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Material(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromARGB(255, 66, 66, 66),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        Expanded(
                          child: GeneralButton(
                            child: const Text(
                              'Ok',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              RouteService.instance.pop();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
