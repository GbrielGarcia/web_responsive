import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_responsive_ui/providers/page_provider.dart';
import 'config/utils/routes/routes.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Landing Page",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
