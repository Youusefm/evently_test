import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentMode = ThemeMode.light;
  bool isDark() => currentMode == ThemeMode.dark;

  void changeTheme(ThemeMode newMode) {
    if (currentMode == newMode) {
      return;
    }
    currentMode = newMode;
    notifyListeners();
  }
}
