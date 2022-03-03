import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/home/components/banner_desktop.dart';
import 'package:web_responsive_ui/screens/main/main_screen.dart';
import 'package:web_responsive_ui/screens/views/stream/home/home_screen_stream.dart';

import 'components/high_lights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = '/dashboard/';

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        Responsive(
          mobile: Container(),
          desktop: BannerDesktop(),
        ),
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(
          myProjectsTitle: Write.myProjects,
        ),
        Recommendations(),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(
        text: "flutter",
        style: TextStyle(color: primaryColor),
      ),
      TextSpan(text: ">")
    ]));
  }
}
