import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrolllController = new PageController();

  List<String> _pages = ['home', 'about', 'contact', 'skills', 'location'];

  int _currentIndex = 0;

// utilizando el scroll controller en route [ constructor]
  createScrollCrontroller(String routeName) {
    this.scrolllController =
        new PageController(initialPage: getPageIndex(routeName));

    // poniendo nombre al title
    html.document.title = _pages[getPageIndex(routeName)];

    // listener para pagina donde me encuentro url
    this.scrolllController.addListener(() {
      final index = (this.scrolllController.page ?? 0).round();
      if (index != _currentIndex) {
        html.window.history.pushState(null, 'none', '#/${_pages[index]}');
        _currentIndex = index;
        html.document.title = _pages[index];
      }
    });
  }

// Recorriendo el _pages y asignando valores
  int getPageIndex(String routeName) {
    return (_pages.indexOf(routeName) == -1) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    scrolllController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
