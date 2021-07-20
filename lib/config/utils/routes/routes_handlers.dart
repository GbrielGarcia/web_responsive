import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
// import 'package:web_responsive_ui/pages/home/home.dart';
import 'package:web_responsive_ui/pages/splash/splash.dart';
import 'package:web_responsive_ui/providers/page_provider.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  final page = params['page']!.first;
  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollCrontroller(page);
    return SplashPages();
  }
});
