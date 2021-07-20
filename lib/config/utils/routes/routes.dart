import 'package:fluro/fluro.dart';
import 'package:web_responsive_ui/config/utils/routes/routes_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    //Rutas
    router.define('/:page', handler: homeHandler);
    // 404
    router.notFoundHandler = homeHandler;
  }
}
