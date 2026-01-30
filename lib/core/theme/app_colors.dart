import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {

  static ThemeMode _themeMode = ThemeMode.system;
  static const Color darkPrimary = Color(0xFF0F172A);


  // BRAND
  static Color primary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF3B82F6)
          : const Color(0xFF2563EB);

  // BACKGROUND
  static Color background(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF0F172A)
          : const Color(0xFFF8FAFC);

  // TEXT
  static Color textPrimary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black;

  static Color textSecondary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF9CA3AF)
          : const Color(0xFF64748B);

  // ICONS (used on AppBar / primary surfaces)
  static Color iconPrimary(BuildContext context) => Colors.white;

  static Color textOnPrimary(BuildContext context,{Color color = Colors.white}) =>
      Theme.of(context).brightness == Brightness.dark
          ? color
          : Colors.black;

  static Color cardOnPrimary(BuildContext context,{Color color = Colors.white}) =>
      Theme.of(context).brightness == Brightness.dark
          ? darkPrimary
          : color;



  static Color messageBubble(BuildContext context,{bool isMe = true}) =>
      Theme.of(context).brightness == Brightness.dark
          ? isMe? Colors.white: Colors.grey
          : isMe? Colors.white : Colors.grey;


  static Color appBarText(BuildContext context) => Colors.white;

  // STATUS
  static Color error(BuildContext context) =>
      const Color(0xFFDC2626);
}

