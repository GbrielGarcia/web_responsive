import 'package:flutter/material.dart';

class LogoWidgets extends StatelessWidget {
  const LogoWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 80,
        width: 200,
        child: Row(
          children: <Widget>[
            Text('<', style: TextStyle(color: Colors.black, fontSize: 20)),
            Text('Gbriel Developer',
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'Agustina')),
            Text('/', style: TextStyle(color: Colors.black, fontSize: 20)),
            Text('>', style: TextStyle(color: Colors.black, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
//