import 'package:evently_test/prefs_manager/prefs_manager.dart';
import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  String currentLang = PrefsManager.getsavedLange() ?? "en";
  void changeLange(String newLange) {
    currentLang = newLange;
    PrefsManager.savedLange(currentLang);
    notifyListeners();
  }
}
