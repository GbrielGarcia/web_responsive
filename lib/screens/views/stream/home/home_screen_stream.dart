import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/home/home_screen.dart';
import 'package:web_responsive_ui/screens/views/stream/home/components/my_store.dart';

class HomeScrennStream extends StatelessWidget {
  const HomeScrennStream({Key? key}) : super(key: key);
  static const String route = '/storelive.ec/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: bgColor,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.route);
            },
            child: Icon(
              Icons.arrow_back, // add custom icons also
            ),
          ),
          title: Text(
            Write.myStoreLive.toUpperCase(),
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2),
              ),
              child: MaterialButton(
                onPressed: () async {
                  html.window.open("https://www.instagram.com/gabrielx2garcia/",
                      "Instagram");
                },
                child: Text(
                  'instagram'.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: MyStore(
            myProjectsTitle: Write.myStoreLive,
          ),
        ));
  }
}
