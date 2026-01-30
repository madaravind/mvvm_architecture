import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // Light Theme fallback for MaterialApp
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF8FAFC),
    primaryColor: const Color(0xFF2563EB),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF2563EB),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Color(0xFF0F172A)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
      ),
    ),
  );

  // Dark Theme fallback for MaterialApp
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStateProperty.all(const Color(0xFF9CA3AF)),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFF0F172A),
    primaryColor: const Color(0xFF3B82F6),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF3B82F6),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Color(0xFFE5E7EB)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF3B82F6),
        foregroundColor: Colors.white,
      ),
    ),
  );
}
