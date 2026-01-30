import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/theme_view_model.dart';
import '../../../core/theme/app_colors.dart';
import '../viewmodel/auth_view_model.dart';
import '../../../app/app_routes.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/widgets/app_loader.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final themeVM = context.watch<ThemeViewModel>();

    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(
        backgroundColor: AppColors.primary(context),
        foregroundColor: AppColors.textPrimary(context),
        elevation: 0,
        actions: [
          PopupMenuButton<ThemeMode>(
            icon: Icon(
              themeVM.themeMode == ThemeMode.dark
                  ? Icons.dark_mode
                  : themeVM.themeMode == ThemeMode.light
                  ? Icons.light_mode
                  : Icons.settings,
              color: AppColors.iconPrimary(context), // <- dynamically chooses color
            ),
            onSelected: (mode) => themeVM.setTheme(mode),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: ThemeMode.light,
                child: Text('Light Theme'),
              ),
              const PopupMenuItem(
                value: ThemeMode.dark,
                child: Text('Dark Theme'),
              ),
              const PopupMenuItem(
                value: ThemeMode.system,
                child: Text('System Theme'),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary(context),
                  ),
                ),
                const SizedBox(height: 32),

                AppTextField(
                  controller: emailController,
                  hint: 'Email',
                ),
                const SizedBox(height: 16),

                AppTextField(
                  controller: passwordController,
                  hint: 'Password',
                  obscure: true,
                ),
                const SizedBox(height: 24),

                vm.loading
                    ? const AppLoader()
                    : AppButton(
                  title: 'Login',
                  onTap: () async {
                    final success = await vm.login(
                      emailController.text.trim(),
                      passwordController.text.trim(),
                    );

                    if (success) {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.home,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
