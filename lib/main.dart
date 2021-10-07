import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_responsive_ui/pages/home/home.dart';

import 'config/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matheus Andrade',
      theme: ThemeData.dark().copyWith(
        primaryColor: Constants.primaryColor,
        scaffoldBackgroundColor: Constants.bgColor,
        canvasColor: Constants.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: Constants.bodyTextColor),
              bodyText2: TextStyle(color: Constants.bodyTextColor),
            ),
      ),
      home: HomePage(),
    );
  }
}
