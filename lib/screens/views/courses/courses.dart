import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/courses.dart';
import 'package:universal_html/html.dart' as html;
import 'package:web_responsive_ui/models/write.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({Key? key}) : super(key: key);
  static const String route = '/courses/';

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Write.myCourses,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Responsive(
                mobile: ProjectsGridView(
                  crossAxisCount: 1,
                  childAspectRatio: 1.3,
                ),
                mobileLarge: ProjectsGridView(
                  crossAxisCount: 2,
                ),
                tablet: ProjectsGridView(
                  childAspectRatio: 1.3,
                ),
                desktop: ProjectsGridView())
          ],
        ),
      )),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {
  bool get webViewMediaPlaybackAlwaysAllow => true;
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: courses.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, index) => CourseCard(
              course: courses[index],
            ));
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course? course;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: HtmlWidget(
              course!.iframe.toString(),
              factoryBuilder: () => MyWidgetFactory(),
            ),
          ),
          Spacer(),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  html.window
                      .open(course!.url!.toString(), course!.url.toString());
                },
                child: Text(
                  "Codigo Fuente >>",
                  style: TextStyle(color: primaryLink),
                ),
              ),
              Expanded(child: Container()),
              Text(
                "Gabriel Garcia",
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
