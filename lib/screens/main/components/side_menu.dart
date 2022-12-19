import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/assets/assets.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/core/style/constants.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/main/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    final al = AppLocalizations.of(context);

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: al!.country, text: Write.countryText),
                  AreaInfoText(
                    title: al.city,
                    text: Write.cityText,
                  ),
                  AreaInfoText(
                    title: al.age,
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
                        html.window.open(
                            "https://drive.google.com/file/d/17r_C08OSrvNfw3cDAi7QICTyB-woSVBZ/view?usp=sharing",
                            "CV ");
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
                            SvgPicture.asset(Assets.download)
                          ],
                        ),
                        //
                      )),
                  Container(
                    color: Color(0xFF2424E),
                    margin: EdgeInsets.only(top: defaultPadding),
                    child: Row(
                      children: [
                        Spacer(),
                        Tooltip(
                          message: 'Instagram'.toUpperCase(),
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          child: IconButton(
                              onPressed: () {
                                html.window.open(
                                  "https://www.instagram.com/gabrielx2garcia/",
                                  "Instagram",
                                );
                              },
                              icon: Image(
                                image: AssetImage(
                                  Assets.instagram,
                                ),
                                width: Const.widthIcon,
                                color: colorIconInfo,
                              )),
                        ),
                        Tooltip(
                          message: 'GitHub'.toUpperCase(),
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          child: IconButton(
                              onPressed: () {
                                html.window.open(
                                    "https://github.com/gbrielgarcia", "GitHub",);
                              },
                              icon: SvgPicture.asset(
                                Assets.github,
                                color: colorIconInfo,
                                width: Const.widthIcon,
                              )),
                        ),
                        Tooltip(
                          message: 'Twitter'.toUpperCase(),
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          child: IconButton(
                              onPressed: () {
                                html.window.open(
                                    "https://twitter.com/Gabrielx2Garcia",
                                    "Twitter");
                              },
                              icon: SvgPicture.asset(
                                Assets.twitter,
                                color: colorIconInfo,
                                width: Const.widthIcon,
                              )),
                        ),
                        Tooltip(
                          message: 'TikTok'.toUpperCase(),
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          child: IconButton(
                              onPressed: () {
                                html.window.open(
                                    "https://www.tiktok.com/@gabrielcodigo.com",
                                    "TikTok");
                              },
                              icon: SvgPicture.asset(
                                Assets.tiktok,
                                color: colorIconInfo,
                                width: Const.widthIcon,
                              )),
                        ),
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
