

import 'package:shared_preferences/shared_preferences.dart';

class Preferences{

  static late SharedPreferences _prefs;

  static bool _isDarkMode = false;
  static int _gender = 1;
  static String _name = "Jose";


  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }

  static set setIsDarkMode (bool isDarkMode){
    _isDarkMode = isDarkMode;
    _prefs.setBool('isDarkMode', isDarkMode);
  }

  static bool getIsDarkMode(){
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set setName (String name){
    _name = name;
    _prefs.setString('name', name);
  }

  static String getName(){
    return _prefs.getString('name') ?? _name;
  }

  static set setGender (int gender){
    _gender = gender;
    _prefs.setInt('gender', gender);
  }

  static int getGender(){
    return _prefs.getInt('gender') ?? _gender;
  }


}