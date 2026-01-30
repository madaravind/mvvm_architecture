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


  static TextStyle appBarTitle(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle title(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subTitle(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle chatMsg(BuildContext context,{Color color = Colors.white}) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: color,
  );

  static TextStyle chatMsgTime(BuildContext context,{Color color = Colors.white}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: color,
  );
}
