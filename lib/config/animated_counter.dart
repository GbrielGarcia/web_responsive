import 'package:flutter/material.dart';
import 'package:web_responsive_ui/config/constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Constants.defaultDuration,
      tween: IntTween(begin: 0, end: value),
      builder: (BuildContext context, value, child) {
        return Text(
          "$value$text",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Constants.primaryColor),
        );
      },
    );
  }
}
