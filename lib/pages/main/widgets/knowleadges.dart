import 'package:flutter/material.dart';
import 'package:web_responsive_ui/config/constants.dart';



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
      padding: const EdgeInsets.symmetric(vertical: Constants.defaultPadding),
      child: Text(
        "Conhecimentos",
        style: Theme.of(context).textTheme.subtitle2,
      ),
        ),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Sylus, Sass"),
        KnowledgeText(text: "Git Knowledge"),
        KnowledgeText(text: "AdonisJs, NuxtJs"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Constants.defaultPadding/2),
      child: Row(
        children: [
          SizedBox(width: Constants.defaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}