import 'package:flutter/material.dart';

class Username extends ChangeNotifier {
  String name;
  DateTime datetime;

  Username({required this.name, required this.datetime});

  void setname(String newname) {
    name = newname;
    notifyListeners();
  }
}
