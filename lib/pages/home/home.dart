import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_responsive_ui/providers/page_provider.dart';
import 'package:web_responsive_ui/pages/shared/menu/custom_app_menu.dart';
import 'package:web_responsive_ui/pages/views/LocationView.dart';
import 'package:web_responsive_ui/pages/views/about_view.dart';
import 'package:web_responsive_ui/pages/views/contact_view.dart';
import 'package:web_responsive_ui/pages/views/home_view.dart';
import 'package:web_responsive_ui/pages/views/skills.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(
              right: 20,
              top: 20,
              child: CustomAppMenu(),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.pink, Colors.purpleAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrolllController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        ContactView(),
        SkillsViews(),
        LocationView(),
      ],
    );
  }
}
