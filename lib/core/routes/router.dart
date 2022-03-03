import 'package:flutter/material.dart';
import 'package:web_responsive_ui/screens/home/home_screen.dart';
import 'package:web_responsive_ui/screens/views/privacy_policy/privacy_policy.dart';
import 'package:web_responsive_ui/screens/views/stream/home/home_screen_stream.dart';

Map<String, WidgetBuilder> getAplicationRouter() {
  return <String, WidgetBuilder>{
    HomeScreen.route: (context) => HomeScreen(),
    PrivacyPolicy.route: (context) => PrivacyPolicy(),
    HomeScrennStream.route: (context) => HomeScrennStream()
  };
}
