import 'package:flutter/material.dart';
import 'package:web_responsive_ui/screens/home/home_screen.dart';
import 'package:web_responsive_ui/screens/views/home_link/home_link.dart';
import 'package:web_responsive_ui/screens/views/privacyPolicy/privacy_policy.dart';

Map<String, WidgetBuilder> getAplicationRouter() {
  return <String, WidgetBuilder>{
    HomeScreen.route: (context) => HomeScreen(),
    HomeLinkViews.route: (context) => HomeLinkViews(),
    PrivacyPolicy.route: (context) => PrivacyPolicy()
  };
}
