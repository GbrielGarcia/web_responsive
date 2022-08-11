import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/views/stream/home/home_screen_stream.dart';
import 'package:universal_html/html.dart' as html;

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              toolbarHeight: 50, // default is 56
              actions: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor, width: 2),
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      html.window.open(
                          "https://www.linkedin.com/in/albertoguaman",
                          "LikedIn");
                    },
                    child: Text(
                      Write.linkedin.toUpperCase(),
                    ),
                  ),
                ),
              ],
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              )),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
