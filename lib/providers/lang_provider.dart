import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier {
  String currentLang = "en";
  void changeLange(String newLange) {
    currentLang = newLange;
    notifyListeners();
  }
}
