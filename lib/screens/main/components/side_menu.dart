import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/constants.dart';
import 'package:web_responsive_ui/models/write.dart';
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
                  AreaInfoText(title: Write.country, text: Write.countryText),
                  AreaInfoText(
                    title: Write.city,
                    text: Write.cityText,
                  ),
                  AreaInfoText(
                    title: Write.age,
                    text: Write.ageNumber.toString(),
                  ),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  TextButton(
                      onPressed: () {
                        html.window.open("", "CV ");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              Write.curriculum,
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
                              html.window.open(
                                  "https://www.instagram.com/gabrielx2garcia/",
                                  "Instagram");
                            },
                            icon: Image(
                                image:
                                    AssetImage('assets/icons/instagram.png'))),
                        IconButton(
                            onPressed: () {
                              html.window.open(
                                  "https://github.com/gbrielgarcia", "GitHub");
                            },
                            icon: Image(
                                image: AssetImage('assets/icons/github.png'))),
                        IconButton(
                            onPressed: () {
                              html.window.open(
                                  "https://twitter.com/Gabrielx2Garcia",
                                  "Twitter");
                            },
                            icon: Image(
                                image: AssetImage('assets/icons/twitter.png'))),
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
