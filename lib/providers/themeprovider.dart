import 'package:evently_test/prefs_manager/prefs_manager.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentMode = PrefsManager.getSavedTheme() ?? ThemeMode.light;
  bool isDark() => currentMode == ThemeMode.dark;

  void changeTheme(ThemeMode newMode) {
    if (currentMode == newMode) {
      return;
    }
    currentMode = newMode;
    PrefsManager.saveTheme(currentMode);
    notifyListeners();
  }
}
