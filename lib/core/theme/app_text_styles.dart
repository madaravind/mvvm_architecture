import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle heading(BuildContext context) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary(context),
  );

  static TextStyle body(BuildContext context) => TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary(context),
  );

  static TextStyle button(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white, // buttons always white text
  );
}
