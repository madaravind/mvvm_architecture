import 'package:flutter/material.dart';
import 'package:mvvm_architecture/core/theme/app_colors.dart';

import '../../core/theme/app_text_styles.dart';

class AppLinkTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const AppLinkTile({super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.cardOnPrimary(context),
          border: Border.all(color: AppColors.textPrimary(context)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.title(context)),
                  const SizedBox(height: 4),
                  Text(subtitle, style: AppTextStyles.subTitle(context)),
                ],
              ),
            ),
            Icon(Icons.open_in_new,size: 18),
          ],
        ),
      ),
    );
  }
}
