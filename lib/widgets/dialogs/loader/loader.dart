import 'dart:ui';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
