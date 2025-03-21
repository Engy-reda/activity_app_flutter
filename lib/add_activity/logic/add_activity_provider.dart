import 'package:flutter/material.dart';

class AddActivityProvider with ChangeNotifier {
  bool _addNewVisit = false;
  set addNewVisit(bool addVisit) {
    _addNewVisit = addVisit;
    notifyListeners();
  }
}
