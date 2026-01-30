import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/auth_view_model.dart';
import '../../../app/app_routes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();

    return Scaffold(
      body: Center(
        child: vm.loading
            ? const CircularProgressIndicator()
            : ElevatedButton(
          onPressed: () async {
            final success = await vm.login('test@mail.com', '123456');
            if (success) {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            }
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
