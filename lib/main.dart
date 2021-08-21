import 'package:flutter/material.dart';
import 'package:web_responsive_ui/pages/widgets/icon_seccion.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gabriel Garcia',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        primarySwatch: Colors.blueGrey,
      ),
      home: SPHomePage(),
    );
  }
}

class SPHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 200.0,
            height: 200.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/logo/logo_brutal.jpg')))),
        Text('Gabriel Garcia',
            style: new TextStyle(fontStyle: FontStyle.italic),
            textScaleFactor: 2.0),
        Text("Desarrollador Flutter"),
        IconSeccion(),
      ],
    )));
  }
}
