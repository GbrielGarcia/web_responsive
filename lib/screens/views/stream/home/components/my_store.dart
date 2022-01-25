import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/Project.dart';
import 'package:web_responsive_ui/models/storelive.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/core/responsi/responsive.dart';
import 'package:web_responsive_ui/screens/home/components/project_card.dart';
import 'package:web_responsive_ui/screens/views/stream/home/components/store_card.dart';

class MyStore extends StatelessWidget {
  const MyStore({Key? key, required this.myProjectsTitle}) : super(key: key);
  final myProjectsTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          myProjectsTitle.toUpperCase(),
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: ProjectsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: ProjectsGridView(
              crossAxisCount: 2,
            ),
            tablet: ProjectsGridView(
              childAspectRatio: 1.1,
            ),
            desktop: ProjectsGridView(
              childAspectRatio: 2,
            ))
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: storeLiveECs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => StoreCard(
        storelive: storeLiveECs[index],
      ),
    );
  }
}
