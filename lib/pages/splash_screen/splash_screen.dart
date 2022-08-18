import 'package:flutter/material.dart';
import 'package:the_market/conts.dart';
import 'package:the_market/layouts/main_layout.dart';
import 'package:the_market/theme/app_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  bool isShow = true;

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 64.0,
                height: 64.0,
                child: Image.asset(AppImage.blackCart),
              ),
              const Text(
                AppConsts.theMarket,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
