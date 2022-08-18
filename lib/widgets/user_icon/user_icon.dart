import 'dart:io';

import 'package:flutter/material.dart';
import 'package:the_market/theme/app_image.dart';

class UserIcon extends StatelessWidget {
  final void Function()? onTap;
  final String? imagePath;
  const UserIcon({
    this.imagePath,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
          onTap: onTap,
          child: ClipOval(
            child: imagePath != null ? Image.file(File(imagePath!)) : Image.asset(AppImage.questionMark),
          )),
    );
  }
}
