import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData currentTheme;  

  ThemeProvider({
    required bool isDarkMode 
  }): currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();


  void setThemeDark(){
    currentTheme = ThemeData.dark();
    notifyListeners();
  }

  void setThemeLight(){
    currentTheme = ThemeData.light();
    notifyListeners();
  }

}