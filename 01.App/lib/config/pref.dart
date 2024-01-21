import 'package:shared_preferences/shared_preferences.dart';

class Pref {

  static String theme = "";

  late bool test;
  Future<bool> checklogin() async{
      final prefs = await SharedPreferences.getInstance();
      test = prefs.containsKey("id");
      if (test){
        return true;
      }
      else {
        return false;
      }
  }

  static Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    theme = prefs.getString("theme") ?? "light";
  }

  static Future<void> saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("theme", theme);
  }

}