import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Footer extends StatelessWidget {
  String text;
   Footer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final al = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: secondaryColor,
        height: 50,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
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
