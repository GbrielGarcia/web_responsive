import 'package:flutter/material.dart';

class UtilAppLocale extends ChangeNotifier {
  Locale? _locale;

  Locale get locale => _locale ?? Locale('es');

  void changeLocale(Locale newLocale) {
    if(newLocale == Locale('en')) {
      _locale = Locale('en');
    } else {
      _locale = Locale('es');
    }
    notifyListeners();
  }
}