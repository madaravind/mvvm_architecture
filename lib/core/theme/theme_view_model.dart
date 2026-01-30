import 'package:flutter/material.dart';

class ThemeViewModel extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system; // default to system

  ThemeMode get themeMode => _themeMode;

  // Toggle between light/dark manually
  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.light; // if system, start with light
    }
    notifyListeners();
  }

  // Set manually or system
  void setTheme(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }
}
