import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class IconSeccion extends StatelessWidget {
  const IconSeccion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: new Icon(FontAwesomeIcons.envelope),
          onPressed: () =>
              html.window.open("mailto:gabrielx2developers@gmail.com", "Email"),
        ),
        IconButton(
          icon: new Icon(FontAwesomeIcons.facebook),
          onPressed: () => html.window
              .open("https://www.facebook.com/coloredhat", "Facebook"),
        ),
        IconButton(
          icon: new Icon(FontAwesomeIcons.twitter),
          onPressed: () => html.window
              .open("https://twitter.com/gbriel_garcia?s=08", "Twitter"),
        ),
        IconButton(
          icon: new Icon(FontAwesomeIcons.instagram),
          onPressed: () => html.window
              .open("https://www.instagram.com/gbriel_garcia/", "Instagram"),
        ),
        IconButton(
          icon: new Icon(FontAwesomeIcons.github),
          onPressed: () =>
              html.window.open("https://github.com/GbrielGarcia", "GitHub"),
        ),
      ],
    );
  }
}
