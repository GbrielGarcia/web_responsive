import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'config/utils/routes/routes.dart';
// import 'package:web_responsive_ui/providers/page_provider.dart';

// void main() => runApp(AppState());

// class AppState extends StatefulWidget {
//   @override
//   _AppStateState createState() => _AppStateState();
// }

// class _AppStateState extends State<AppState> {
//   @override
//   void initState() {
//     _updateAppbar();
//     super.initState();
//   }

//   void _updateAppbar() {
//     SystemChrome.setSystemUIOverlayStyle(
//         SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => PageProvider()),
//       ],
//       child: MyApp(),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     Flurorouter.configureRoutes();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       builder: (context, widget) => ResponsiveWrapper.builder(
//         BouncingScrollWrapper.builder(context, widget!),
//         defaultScale: true,
//         minWidth: 480,
//         defaultName: MOBILE,
//         breakpoints: [
//           ResponsiveBreakpoint.autoScale(480, name: MOBILE),
//           ResponsiveBreakpoint.resize(600, name: MOBILE),
//           ResponsiveBreakpoint.resize(850, name: TABLET),
//           ResponsiveBreakpoint.resize(1080, name: DESKTOP),
//         ],
//       ),
//       debugShowCheckedModeBanner: false,
//       title: 'Codigo Gabriel',
//       initialRoute: '/home',
//       onGenerateRoute: Flurorouter.router.generator,
//     );
//   }
// }
