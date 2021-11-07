import 'package:flutter/material.dart';
import 'package:web_responsive_ui/screens/home/components/background.dart';
import 'package:web_responsive_ui/screens/views/home_link/home_link.dart';

Map<String, WidgetBuilder> getAplicationRouter() {
  return <String, WidgetBuilder>{
    BackgroundHome.route: (context) => BackgroundHome(),
    HomeLinkViews.route: (context) => HomeLinkViews()
  };
}
