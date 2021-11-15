import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);
  static const String route = '/politicas/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'La aplicacion no toma los datos de los usuarios de ninguna manera'),
      ),
    );
  }
}
