import 'package:flutter/material.dart';

class MenuItem {
  final IconData icon;
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  MenuItem({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });
}
