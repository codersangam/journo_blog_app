import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:journo_blog_app/presentation/router/router_imports.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static Future<void> manipulateLogin(context) async {
    var token = await getToken();
    if (token != null) {
      AutoRouter.of(context).replace(const GeneralRoute());
    } else {
      AutoRouter.of(context).replace(const OnBoardRoute());
    }
  }

  static Future<void> saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  }

  static Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("token");
  }

  static Future<void> clearAllSavedData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  static Future<void> saveLocale(Locale locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("locale", locale.toString());
  }

  static Future<Locale> getLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var localeString = prefs.getString("locale");
    switch (localeString) {
      case 'ne_NP':
        return const Locale('ne', 'NP');
      case 'hi_IN':
        return const Locale('hi', 'IN');
      case 'ar_AE':
        return const Locale('ar', 'AE');
      default:
        return const Locale('en', 'US');
    }
  }
}
