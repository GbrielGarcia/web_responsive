import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:web_responsive_ui/utils/url/url.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100),
            CircleAvatar(
              radius: 100,
              child: AvatarView(
                radius: 100,
                borderColor: Color(0xff213A50),
                avatarType: AvatarType.CIRCLE,
                backgroundColor: Colors.red,
                imagePath: 'assets/logo/logo_brutal.jpg',
                errorWidget: Container(
                  child: Icon(
                    Icons.error,
                    size: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Gabriel Garcia',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Desarrollador Flutter de #Ecuador',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '#FLUTTERDEV ❤️',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 25),
            Text(
              'Connect with Me',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    htmlOpenGithub();
                  },
                  child: Image.asset(
                    'icons8-github-100.png',
                    height: 50,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      htmlOpenLinkedin();
                    },
                    child: Image.asset('icons8-linkedin-100.png', height: 65)),
                GestureDetector(
                    onTap: () {
                      htmlOpenTwitter();
                    },
                    child: Image.asset('icons8-twitter-100.png', height: 50)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                htmlOpenMySite();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA2834D),
                      const Color(0xffBC9A5F)
                    ])),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Hecho de ❤️ Usando Flutter',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}
