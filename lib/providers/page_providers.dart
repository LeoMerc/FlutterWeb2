import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollController = PageController();

  List<String> _pages = [
    'home',
    'about',
    'pricing',
    'contact',
    'location',
  ];
String currentPage = 'home';
  int _currentIndex = 0;

  createScrollController(String routeName) {
    this.scrollController =
        PageController(initialPage: getPageIndex(routeName));
    this.scrollController.addListener(() {
      final index = this.scrollController.page ?? 0.round();
      if (index != _currentIndex) {

        html.window.history
            .pushState(null, 'none', '#/${_pages[index.toInt()]}');

        _currentIndex = index.toInt();
  html.document.title = _pages[index.toInt()];

              

      }
    });
  }

  int getPageIndex(String routeName) {
    return (_pages.indexOf(routeName) == -1) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    // final routeName = _pages[index];
    scrollController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
