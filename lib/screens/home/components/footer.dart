import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:universal_html/html.dart' as html;
import '../../widget/cupertino_switch.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final al = AppLocalizations.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: secondaryColor,
        height: 50,
        child: Center(
          child: Text(
            '"${al!.footerText}'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,

          ),
        ),
      ),
    );
  }
}
