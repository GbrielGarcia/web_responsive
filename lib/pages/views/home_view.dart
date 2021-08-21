import 'package:flutter/material.dart';
import 'package:web_responsive_ui/config/animation/carousel/carousel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Carousel(),
            ],
          ),
        ),
      ),
    );
  }
}
