import 'package:flutter/material.dart';

class AppTheme {
  //   // --- צבעים גלובליים ---
  static const Color _primaryColor = Color(0xFF0288D1); // כחול-טורקיז מודרני
  static const Color _accentColor = Color(0xFFFFC107); // צהוב זהב עדין
  static const Color _errorColor = Color(0xFFD32F2F);
  static const Color _surfaceLight = Color(0xFFF7F9FA);
  static const Color _surfaceDark = Color(0xFF181D25);

  //   // --- ThemeData ללייט ---
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      brightness: Brightness.light,
      surface: _surfaceLight,
      secondary: _accentColor,
      error: _errorColor,
    ),
    useMaterial3: true,
  );

  //   // --- ThemeData ל-dark ---
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      brightness: Brightness.dark,
      surface: _surfaceDark,
      secondary: _accentColor,
      error: _errorColor,
    ),
    useMaterial3: true,
    // אפשר להוסיף עוד ThemeData
  );
}
