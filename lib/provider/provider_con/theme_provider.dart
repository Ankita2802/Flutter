import 'package:flutter/material.dart';

class ThemeChangeProvider with ChangeNotifier{
    var _thememode=ThemeMode.light;
    ThemeMode get themeMode => _thememode;
    
    void setTheme(themeMode){
       _thememode =themeMode;
       notifyListeners();
    }
    
}