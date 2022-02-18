import 'package:flutter/material.dart';

class ListState with ChangeNotifier {
  String title = 'Provided başlık';
  String subtitle = 'Altbaşlık';

  void changeTitle(newValue) {
    title = newValue;
    notifyListeners();
  }
}
