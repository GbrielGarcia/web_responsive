import 'package:flutter/material.dart';
import 'package:web_responsive_ui/pages/about_pages.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => AboutPages(),
  };
}
