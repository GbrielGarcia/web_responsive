import 'package:flutter/material.dart';
import 'package:web_responsive_ui/components/animated_counter.dart';
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
                          value: 10,
                          text: "+",
                        ),
                        label: "lorem"),
                    HeighLight(
                        counter: AnimatedCounter(
                          value: 10,
                          text: "+",
                        ),
                        label: "lorem"),
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
                          value: 20,
                          text: "+",
                        ),
                        label: "lorem"),
                    HeighLight(
                        counter: AnimatedCounter(
                          value: 30,
                          text: "+",
                        ),
                        label: "lorem"),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                    counter: AnimatedCounter(
                      value: 7,
                      text: "+",
                    ),
                    label: "lorem"),
                HeighLight(
                    counter: AnimatedCounter(
                      value: 8,
                      text: "+",
                    ),
                    label: "lorem"),
                HeighLight(
                    counter: AnimatedCounter(
                      value: 9,
                      text: "+",
                    ),
                    label: "lorem"),
                HeighLight(
                    counter: AnimatedCounter(
                      value: 7,
                      text: "+",
                    ),
                    label: "lorem"),
              ],
            ),
    );
  }
}
