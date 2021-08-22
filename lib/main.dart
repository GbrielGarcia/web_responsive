import 'package:flutter/material.dart';
import 'package:web_responsive_ui/pages/home_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(body: HomePage()),
    );
  }
}
