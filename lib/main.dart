import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/routes/router.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/screens/home/components/background.dart';
import 'package:web_responsive_ui/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: bgColor,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gabriel Garcia',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: bodyTextColor),
              bodyText2: TextStyle(color: bodyTextColor),
            ),
      ),
      initialRoute: BackgroundHome.route,
      routes: getAplicationRouter(),
    );
  }
}
