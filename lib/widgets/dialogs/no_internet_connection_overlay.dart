import 'package:flutter/material.dart';
import 'package:the_market/theme/app_text_styles.dart';

const String _nointernet = 'No internet connection';

class NoInternetConnectionDialogWidget extends StatelessWidget {
  const NoInternetConnectionDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Material(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                _nointernet,
                style: AppTextStyles.textStyle12w400,
              ),
              const Icon(Icons.warning_amber, color: Colors.black87)
            ],
          ),
        ),
      ),
    );
  }
}
