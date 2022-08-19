import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/routes/router.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:web_responsive_ui/screens/views/stream/home/home_screen_stream.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: bgColor,
  ));

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBhFhiZmULuLIuaIZQhp9IWF89LJz1vurQ",
          authDomain: "projectoporfolio.firebaseapp.com",
          projectId: "projectoporfolio",
          storageBucket: "projectoporfolio.appspot.com",
          messagingSenderId: "140312917531",
          appId: "1:140312917531:web:031549c75433a057c7aabe",
          measurementId: "G-2E1NL7TRBG"),
    );
  } else {
    await Firebase.initializeApp();
  }
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
      initialRoute: HomeScreen.route,
      routes: getAplicationRouter(),
    );
  }
}
