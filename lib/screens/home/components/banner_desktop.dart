import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/views/stream/home/home_screen_stream.dart';

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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 2),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScrennStream.route);
                },
                child: Text(
                  Write.myStoreLive.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
