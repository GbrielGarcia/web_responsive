import 'package:flutter/material.dart';
import 'package:web_responsive_ui/components/animated_counter.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/home/components/heigh_light.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                        counter: AnimatedCounter(
                          value: 2,
                          text: "+",
                        ),
                        label: Write.app),
                    HeighLight(
                        counter: AnimatedCounter(
                          value: 8,
                          text: "+",
                        ),
                        label: Write.customers),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                        counter: AnimatedCounter(
                          value: 3,
                          text: "+",
                        ),
                        label: Write.web),
                    HeighLight(
                        counter: AnimatedCounter(
                          value: 20,
                          text: "+",
                        ),
                        label: Write.repositoryGitGub),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                    counter: AnimatedCounter(
                      value: 2,
                      text: "+",
                    ),
                    label: Write.app),
                HeighLight(
                    counter: AnimatedCounter(
                      value: 8,
                      text: "+",
                    ),
                    label: Write.customers),
                HeighLight(
                    counter: AnimatedCounter(
                      value: 3,
                      text: "+",
                    ),
                    label: Write.web),
                HeighLight(
                    counter: AnimatedCounter(
                      value: 20,
                      text: "+",
                    ),
                    label: Write.repositoryGitGub),
              ],
            ),
    );
  }
}
