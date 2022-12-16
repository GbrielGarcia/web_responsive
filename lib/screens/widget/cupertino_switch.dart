import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../core/components/locale.dart';
import '../../core/style/color.dart';

class CupertinoSwitchW extends StatelessWidget {

  final width;
  final height;
  const CupertinoSwitchW({Key? key, this.width, this.height,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var language = Provider.of<UtilAppLocale>(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('  EN', style: TextStyle(color: Colors.white)),
          CupertinoSwitch(

            onChanged: (bool value) {
              value == true
                  ? language.changeLocale(Locale('es'))
                  : language.changeLocale(Locale('en'));
            },
            value: language.locale == Locale('en') ? false : true,
          ),
          Text('ES  ', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
