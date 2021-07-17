import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:web_responsive_ui/config/assets/assets.dart';
import 'package:web_responsive_ui/pages/home/home.dart';

class SplashPages extends StatelessWidget {
  const SplashPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Assets.splasIcon,

        duration: 3000,
        backgroundColor: Colors.black,
        nextScreen: HomePage(),
    ),);
  }
}
