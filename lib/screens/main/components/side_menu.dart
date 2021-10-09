import 'package:flutter/material.dart';
import 'package:web_responsive_ui/constants.dart';
import 'package:web_responsive_ui/screens/main/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'package:universal_html/html.dart' as html;

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: "País", text: "Ecuador"),
                  AreaInfoText(
                    title: "Ciudad",
                    text: "Santo Domingo",
                  ),
                  AreaInfoText(
                    title: "Edad",
                    text: "22",
                  ),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  TextButton(
                      onPressed: () {
                        html.window.open("", "CV");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(height: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      )),
                  Container(
                    color: Color(0xFF2424E),
                    margin: EdgeInsets.only(top: defaultPadding),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              html.window.open("", "Linkedin");
                            },
                            icon:
                                SvgPicture.asset("assets/icons/linkedin.svg")),
                        IconButton(
                            onPressed: () {
                              html.window.open(
                                  "https://github.com/gbrielgarcia", "GitHub");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg")),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg")),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
