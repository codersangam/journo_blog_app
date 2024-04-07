import 'package:flutter/material.dart';

class LanguageModel {
  final String title;
  final Locale locale;
  LanguageModel({required this.title, required this.locale});

  static List<LanguageModel> languages = [
    LanguageModel(title: 'English', locale: const Locale('en', 'US')),
    LanguageModel(title: 'Nepali', locale: const Locale('ne', 'NP')),
    LanguageModel(title: 'Hindi', locale: const Locale('hi', 'IN')),
    LanguageModel(title: 'Arabic', locale: const Locale('ar', 'AE')),
  ];
}
