import 'package:flutter/material.dart';
import '../../../data/repositories/auth_repository.dart';
import '../../../core/storage/local_storage.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository _repo;
  bool loading = false;
  String? error;

  AuthViewModel(this._repo);

  Future<bool> login(String email, String password) async {
    loading = true;
    notifyListeners();

    try {
      final user = await _repo.login(email, password);
      LocalStorage.saveToken(user.token);
      loading = false;
      notifyListeners();
      return true;
    } catch (e) {
      error = 'Login failed';
      loading = false;
      notifyListeners();
      return false;
    }
  }
}
