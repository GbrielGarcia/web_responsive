import 'package:flutter/material.dart';
import 'package:web_responsive_ui/components/animated_progress_indicator.dart';

import '../../../constants.dart';

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
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "lorem",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.7, label: "lorem")),
            SizedBox(width: defaultPadding / 2),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.62, label: "lorem")),
            SizedBox(width: defaultPadding / 2),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.5, label: "lorem"))
          ],
        )
      ],
    );
  }
}
