import 'package:fluro/fluro.dart';
import 'package:web_responsive_ui/pages/home/home.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  return HomePage();
});
