import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_responsive_ui/pages/shared/widgets/logo.dart';
import 'package:web_responsive_ui/providers/page_provider.dart';
import 'package:web_responsive_ui/pages/shared/menu/custom_app_menu.dart';
import 'package:web_responsive_ui/pages/views/LocationView.dart';
import 'package:web_responsive_ui/pages/views/about_view.dart';
import 'package:web_responsive_ui/pages/views/contact_view.dart';
import 'package:web_responsive_ui/pages/views/home_view.dart';
import 'package:web_responsive_ui/pages/views/skills.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: buildBoxDecoration(),
        color: Colors.white,
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(right: 20, top: 20, child: CustomAppMenu()),
            Positioned(bottom: 2.0, child: LogoWidgets()),
          ],
        ),
      ),
    );
  }
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
        SkillsViews(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}