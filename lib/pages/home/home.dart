import 'package:flutter/material.dart';
import 'package:web_responsive_ui/pages/home/widget/footer/footer_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FooterWidgets(),
    );
  }
}
