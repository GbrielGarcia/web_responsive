import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/core/style/constants.dart';
import 'package:web_responsive_ui/models/Project.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:universal_html/html.dart' as html;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project? project;

  @override
  Widget build(BuildContext context) {
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
                  "Ver mas >>",
                  style: TextStyle(color: primaryColor),
                ),
              ),
              Expanded(child: Container()),
              Text(
                "Hecho con",
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              SvgPicture.asset(
                project!.iconImage!,
                width: Const.widthIcon,
                height: Const.heightIcon,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
              SvgPicture.asset(
                project!.iconImage1!,
                width: Const.widthIcon,
                height: Const.heightIcon,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
              SvgPicture.asset(
                project!.iconImage2!,
                width: Const.widthIcon,
                height: Const.heightIcon,
              )
            ],
          )
        ],
      ),
    );
  }
}
