import 'package:flutter/material.dart';
import 'package:web_responsive_ui/config/assets.dart';
import 'package:web_responsive_ui/config/constants.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:web_responsive_ui/pages/widgets/logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
          children: [Content(), Positioned(bottom: 2.0, child: LogoWidgets())]),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: Image.asset(Assets.avatar).image,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Gabriel Garcia',
              textScaleFactor: 4,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Desarrollador Flutter \nFlutter | Ui/Ux | Desarrollador Android',
              style: Theme.of(context).textTheme.caption,
              textScaleFactor: 2,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Curriculum(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextButton.icon(
                  icon: SizedBox(
                      width: 20, height: 20, child: Image.asset(Assets.github)),
                  label: Text('Github '),
                  onPressed: () =>
                      html.window.open(Constants.PROFILE_GITHUB, 'yashk2000'),
                ),
                TextButton.icon(
                  icon: SizedBox(
                      width: 20, height: 20, child: Image.asset(Assets.gitlab)),
                  label: Text('GitLab '),
                  onPressed: () =>
                      html.window.open(Constants.PROFILE_GITLAB, 'yashk2000'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextButton.icon(
                  icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.instagram)),
                  label: Text('Instagram '),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_INSTAGRAM, 'not_khare'),
                ),
                TextButton.icon(
                  icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(Assets.twitter)),
                  label: Text('Twitter '),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_TWITTER, '_p0lar_bear'),
                ),
              ],
            ),
            SizedBox(height: 120),
            Positioned(bottom: 2.0, child: Footer())
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text("Hecho con Flutter ❤️"),
    );
  }
}

class Curriculum extends StatelessWidget {
  const Curriculum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new InkWell(
          child: new Text(
            'Descarga mi Curriculum Vitae',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
            textScaleFactor: 2,
            textAlign: TextAlign.center,
          ),
          onTap: () {}),
    );
  }
}
