import 'package:flutter/material.dart';

class AppTheme {
  static const double kAppBarIconSize = 22;

  // Light Theme fallback for MaterialApp
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF8FAFC),
    primaryColor: const Color(0xFF2563EB),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white
    ),
    iconTheme: IconThemeData(color: Colors.black),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStateProperty.resolveWith((states) {
          return Colors.white; // works for both, AppBar friendly
        }),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF3B82F6),
      foregroundColor: Colors.white,
      // ICONS (back, menu, action buttons)
      iconTheme: IconThemeData(
        size: kAppBarIconSize,
        color: Colors.black,
      ),
      actionsIconTheme: IconThemeData(
        size: kAppBarIconSize,
        color: Colors.white,
      ),
      // TITLE TEXT
      titleTextStyle: TextStyle(
        color:Colors.white, // dark text
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.black),
      displayMedium: TextStyle(color: Colors.black),
      displaySmall: TextStyle(color: Colors.black),

      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),

      titleLarge: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black),
      titleSmall: TextStyle(color: Colors.black),

      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: Colors.black),

      labelLarge: TextStyle(color: Colors.black),
      labelMedium: TextStyle(color: Colors.black),
      labelSmall: TextStyle(color: Colors.black),
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
    scaffoldBackgroundColor: const Color(0xFF0F172A),
    primaryColor: const Color(0xFF3B82F6),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white
    ),
    iconTheme: IconThemeData(color: Colors.white),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStateProperty.resolveWith((states) {
          return Colors.white; // works for both, AppBar friendly
        }),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF3B82F6),
      foregroundColor: Colors.white,
      // ICONS (back, menu, action buttons)
      iconTheme: IconThemeData(
        size: kAppBarIconSize,
        color: Colors.white,
      ),
      actionsIconTheme: IconThemeData(
        size: kAppBarIconSize,
        color: Colors.white,
      ),
      // TITLE TEXT
      titleTextStyle: TextStyle(
        color:Colors.white, // dark text
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.white),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),

      headlineLarge: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),

      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),

      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),

      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF3B82F6),
        foregroundColor: Colors.white,
      ),
    ),
  );
}
