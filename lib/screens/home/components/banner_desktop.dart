import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:universal_html/html.dart' as html;
import '../../widget/cupertino_switch.dart';

class BannerDesktop extends StatelessWidget {
  const BannerDesktop({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: secondaryColor,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CupertinoSwitchW(
              width: 125,
              height: 46,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 125,
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2),
              ),
              child: MaterialButton(
                onPressed: () async {
                  html.window.open(
                      "https://www.linkedin.com/in/albertoguaman", "LikedIn");
                },
                child: Text(
                  Write.linkedin.toUpperCase(),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 125,
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2),
              ),
              child: MaterialButton(
                onPressed: () async {
                  html.window.open("https://www.instagram.com/gabrielx2garcia/",
                      "Instagram");
                },
                child: Text(
                  Write.instagram.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
