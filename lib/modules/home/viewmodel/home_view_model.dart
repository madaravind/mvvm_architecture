import 'package:flutter/material.dart';
import '../../../data/repositories/home_repository.dart';
import '../../../core/storage/local_storage.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository _repo;
  String message = '';

  HomeViewModel(this._repo) {
    load();
  }

  Future<void> load() async {
    message = await _repo.fetchMessage();
    notifyListeners();
  }

  void logout() {
    LocalStorage.clear();
  }
}
