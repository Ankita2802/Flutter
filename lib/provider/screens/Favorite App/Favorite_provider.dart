import 'package:flutter/material.dart';
class FavoriteListProvider with ChangeNotifier{
   List<int> _SelectedItem=[];
   List<int> get selecteditem=> _SelectedItem;
   void addSelectedItem(int value){
    _SelectedItem.add(value);
    print(_SelectedItem);
    notifyListeners();
   }
   void removeItem(int value){
    _SelectedItem.remove(value);
    notifyListeners();
   }

}