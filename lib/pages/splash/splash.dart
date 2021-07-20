import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
// import 'package:web_responsive_ui/config/assets/assets.dart';
import 'package:web_responsive_ui/pages/home/home.dart';

class SplashPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Lottie.network(
            'https://assets7.lottiefiles.com/datafiles/40aX5db74VvGPWw/data.json'),
        duration: 3000,
        backgroundColor: Colors.white,
        nextScreen: HomePage(),
      ),
    );
  }
}
