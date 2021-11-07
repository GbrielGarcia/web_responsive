import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:web_responsive_ui/screens/home/home_screen.dart';

class BackgroundHome extends StatefulWidget {
  const BackgroundHome({Key? key}) : super(key: key);
  static const String route = '/dashboard/';

  @override
  _BackgroundHomeState createState() => _BackgroundHomeState();
}

class _BackgroundHomeState extends State<BackgroundHome>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      vsync: this,
      behaviour: RandomParticleBehaviour(),
      child: HomeScreen(),
    );
  }
}
