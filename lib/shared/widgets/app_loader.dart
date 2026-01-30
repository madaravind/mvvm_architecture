import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(AppColors.primary(context)),
      ),
    );
  }
}
