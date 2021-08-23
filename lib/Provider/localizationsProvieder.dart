

import 'package:flutter/material.dart';

class LocalizationsProvider extends ChangeNotifier{
  String language='en';
  void changeLanguage(String lang){
    language=lang;
    notifyListeners();
  }
}