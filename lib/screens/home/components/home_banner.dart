import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/assets/assets.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../home_screen.dart';
import 'package:universal_html/html.dart' as html;

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final al = AppLocalizations.of(context);
    int number = 593992889078;

    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.0 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.bg,
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  al!.presents,
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context) ||
                    Responsive.isTablet(context))
                  ElevatedButton(
                    onPressed: () {
                      html.window.open(
                          "https://api.whatsapp.com/send/?phone=${number}&text=Saludos me interesa tus servicios de: ",
                          "WhatsApp");
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 1.5,
                          vertical: defaultPadding - 5),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      al.quoteNow.toUpperCase(),
                      style: TextStyle(
                        color: darkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final al = AppLocalizations.of(context);

    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text(al!.performed),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final al = AppLocalizations.of(context);

    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(al!.webSites,
            speed: Duration(
              milliseconds: 60,
            )),
        TyperAnimatedText(al.movileApp,
            speed: Duration(
              milliseconds: 60,
            )),
        TyperAnimatedText(' ecommerce',
            speed: Duration(
              milliseconds: 60,
            ))
      ],
    );
  }
}
