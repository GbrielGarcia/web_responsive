import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({Key? key}) : super(key: key);
  static const String route = '/courses/';

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: HtmlWidget(
                  '<iframe  src="https://www.youtube.com/embed/daArOFWaWxo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
                  factoryBuilder: () => MyWidgetFactory(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {
  bool get webViewMediaPlaybackAlwaysAllow => true;
}
