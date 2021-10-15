import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_responsive_ui/core/style/color.dart';
import 'package:web_responsive_ui/models/write.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            Write.knowledge,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: Write.flutterDart),
        KnowledgeText(text: Write.HtmlCssJavaScript),
        KnowledgeText(text: Write.WordPresEcommerce),
        KnowledgeText(text: Write.linux),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/svg/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}
