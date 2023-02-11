import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/core/style/constants.dart';
import 'package:web_responsive_ui/models/storelive.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:universal_html/html.dart' as html;

import '../../../../widget/tootil.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({
    Key? key,
    required this.storelive,
  }) : super(key: key);

  final StoreLiveEC? storelive;

  @override
  Widget build(BuildContext context) {
    int number = 593992889078;

    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            storelive!.title!.toUpperCase(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(
            storelive!.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          Row(
            children: [
              Responsive(
                mobile: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              storelive!.title!.toUpperCase(),
                            ),
                            content: Text(
                              storelive!.description!,
                            ),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () async {
                                    html.window.open(
                                        "https://api.whatsapp.com/send/?phone=${number}&text=Hey! me interesa la cuenta de: ${storelive!.title!.toUpperCase()}",
                                        "WhatsApp");
                                  },
                                  child: Text(
                                    'Whatsapp'.toUpperCase(),
                                    style: TextStyle(color: primaryColor),
                                  )),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'cancelar!'.toUpperCase(),
                                  style: TextStyle(color: primaryLink),
                                ),
                              )
                            ],
                          );
                        });
                    // const snackBar = SnackBar(content: Text('Tap'));

                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  // The custom button
                  child: Text(
                    "Ver Mas >>".toUpperCase(),
                    style: TextStyle(color: primaryColor),
                  ),
                ),
                desktop: TextButton(
                  onPressed: () async {
                    html.window.open(
                        "https://api.whatsapp.com/send/?phone=${number}&text=Hey! me interesa la cuenta de: ${storelive!.title!.toUpperCase()}",
                        "WhatsApp");
                  },
                  child: Text(
                    "WhatsApp >>".toUpperCase(),
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              Expanded(child: Container()),
              TooltipPngWidget(
                storelive!.title!.toUpperCase(),
                storelive!.iconImage!,
                Const.widthIconStore,
                Const.heightIconStore,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
