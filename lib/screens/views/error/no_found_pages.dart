import 'package:flutter/material.dart';

class ViewsNoFound extends StatelessWidget {
  const ViewsNoFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text('Error, pagina no encontrada.'),
    ));
  }
}
