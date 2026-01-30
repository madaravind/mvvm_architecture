import 'package:flutter/material.dart';

class AppColors {
  static Color primary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF3B82F6)
          : const Color(0xFF2563EB);

  static Color background(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF0F172A)
          : const Color(0xFFF8FAFC);

  static Color textPrimary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFFE5E7EB)
          : const Color(0xFF0F172A);

  static Color textSecondary(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF9CA3AF)
          : const Color(0xFF64748B);

  static Color iconPrimary(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    if (brightness == Brightness.dark) {
      return Colors.white; // white on dark theme
    } else {
      return Colors.white; // white on light theme AppBar
    }
  }

  static Color error(BuildContext context) =>
      const Color(0xFFDC2626);
}
