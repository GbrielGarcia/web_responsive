import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_responsive_ui/config/animation/carousel/carousel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              ResponsiveWrapper(
                  maxWidth: 1400,
                  minWidth: 1400,
                  defaultScale: true,
                  mediaQueryData: MediaQueryData(size: Size(1200, 640)),
                  child: RepaintBoundary(child: Carousel())),
            ],
          ),
        ),
      ),
    );
  }
}
