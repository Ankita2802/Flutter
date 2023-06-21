// ignore_for_file: file_names

import 'package:flutter/material.dart';
class FavoriteListProvider with ChangeNotifier{
   // ignore: non_constant_identifier_names
   final List<int> _SelectedItem=[];
   List<int> get selecteditem=> _SelectedItem;
   void addSelectedItem(int value){
    _SelectedItem.add(value);
    notifyListeners();
   }
   void removeItem(int value){
    _SelectedItem.remove(value);
    notifyListeners();
   }

}