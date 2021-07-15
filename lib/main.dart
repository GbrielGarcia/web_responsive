import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:web_responsive_ui/screens/home/home_screens.dart';
import 'package:web_responsive_ui/utils/style/style.dart';

void main() {
  runApp(
      EasyDynamicThemeWidget(child: MyApp()
      ),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: HomeScreen(),
    );
  }
}
