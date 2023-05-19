import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  AppThemes();

  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    primaryColor: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
    useMaterial3: true,
    primaryColor: Colors.green,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
