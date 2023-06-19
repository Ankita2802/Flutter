import 'package:flutter/material.dart';
//changenotifier working as setstate methods
class CounterProvider with ChangeNotifier {
  int _count=50;
  int get count => _count;
  void setcount(){
    _count++;
    notifyListeners();
  }

}