import 'package:flutter/material.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/home/components/my_projects.dart';
import 'package:web_responsive_ui/screens/views/stream/home/components/my_store.dart';
import 'package:web_responsive_ui/models/write.dart';
import 'package:web_responsive_ui/screens/views/stream/home/components/store_card.dart';

class HomeScrennStream extends StatelessWidget {
  const HomeScrennStream({Key? key}) : super(key: key);
  static const String route = '/storelive.ec';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: MyStore(
        myProjectsTitle: Write.myStoreLive,
      ),
    ));
  }
}
