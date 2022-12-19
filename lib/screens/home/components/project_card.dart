import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/core/style/constants.dart';
import 'package:web_responsive_ui/models/Project.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:universal_html/html.dart' as html;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project? project;

  @override
  Widget build(BuildContext context) {
    final al = AppLocalizations.of(context);

    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project!.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project!.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  html.window.open(
                      project!.link!.toString(), project!.link.toString());
                },
                child: Text(
                  al!.seeMore,
                  style: TextStyle(color: primaryColor),
                ),
              ),
              Expanded(child: Container()),
              Text(
                al.madeWith,
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              TooltipWidget(
                  project!.name1!,
                  project!.iconImage!
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
              TooltipWidget(
                  project!.name2!,
                  project!.iconImage1!
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
              TooltipWidget(
                  project!.name3!,
                  project!.iconImage2!
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget TooltipWidget(   name, icon) {
  return Tooltip(
    textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    message: name.toUpperCase(),
    child: SvgPicture.asset(
      icon,
      width: Const.widthIcon,
      height: Const.heightIcon,
    ),
  );
}
