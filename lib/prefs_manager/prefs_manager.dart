import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void saveTheme(ThemeMode currentTheme) {
    String? themeSaved = currentTheme == ThemeMode.dark ? "Dark" : "Light";
    prefs.setString("Themekey", themeSaved!);
  }

  static ThemeMode? getSavedTheme() {
    String? currentTheme = prefs.getString("Themekey");
    if (currentTheme == null) {
      return ThemeMode.light;
    } else if (currentTheme == "Light") {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }

  static void savedLange(String language) {
    prefs.setString("lang", language);
  }

  static String? getsavedLange() {
    return prefs.getString("lang");
  }
}
