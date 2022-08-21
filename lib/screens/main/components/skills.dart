import 'package:flutter/material.dart';
import 'package:web_responsive_ui/core/components/animated_progress_indicator.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/write.dart';

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
            Write.skill,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.75, label: Write.flutter)),
            SizedBox(width: defaultPadding / 2),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.70, label: Write.python)),
            SizedBox(width: defaultPadding / 2),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                    percentage: 0.95, label: Write.wordPres))
          ],
        )
      ],
    );
  }
}
