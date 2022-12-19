import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:universal_html/html.dart' as html;
import '../widget/cupertino_switch.dart';
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
                Row(
                  children: [
                    Responsive.isMobile(context)
                        ? Container()
                        : CupertinoSwitchW(
                            width: null,
                            height: 32,
                          ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor, width: 2),
                      ),
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () async {
                              html.window.open(
                                  "https://www.linkedin.com/in/albertoguaman",
                                  "LikedIn");
                            },
                            child: Text(
                              Write.linkedin.toUpperCase(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor, width: 2),
                      ),
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () async {
                              html.window.open(
                                  "https://www.instagram.com/gabrielx2garcia/",
                                  "Instagram");
                            },
                            child: Text(
                              Write.instagram.toUpperCase(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
      floatingActionButton: Responsive.isMobile(context)
          ? Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: CupertinoSwitchW(
                width: 113,
              ),
          )
          : Container(),
    );
  }
}
