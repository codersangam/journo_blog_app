import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static Future<void> saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  }
}
