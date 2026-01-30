import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/home_view_model.dart';
import '../../../app/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(child: Text(vm.message)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          vm.logout();
          Navigator.pushReplacementNamed(context, AppRoutes.login);
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
