import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool disabled;

  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: disabled
            ? Colors.grey
            : AppColors.primary(context),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        title,
        style: AppTextStyles.button(context),
      ),
    );
  }
}
