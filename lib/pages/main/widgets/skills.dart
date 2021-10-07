import 'package:flutter/material.dart';
import 'package:web_responsive_ui/config/animated_progress_indicator.dart';
import 'package:web_responsive_ui/config/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Divider(),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: Constants.defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.8, label: "Flutter")),
            SizedBox(width: Constants.defaultPadding / 2),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.72, label: "Firebase")),
            SizedBox(width: Constants.defaultPadding / 2),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.5, label: "AdonisJs"))
          ],
        )
      ],
    );
  }
}
