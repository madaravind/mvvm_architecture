import 'package:flutter/material.dart';

class AppDialog {
  static void showInfo(
      BuildContext context, {
        required String title,
        required String message,
      }) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
