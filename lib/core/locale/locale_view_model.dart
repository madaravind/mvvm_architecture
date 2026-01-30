import 'package:flutter/material.dart';

class LocaleViewModel extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void setSystemLocale() {
    _locale = null;
    notifyListeners();
  }
}
