import '../models/user_model.dart';
import '../services/auth_service.dart';

class AuthRepository {
  final AuthService _service = AuthService();

  Future<UserModel> login(String email, String password) async {
    final res = await _service.login(email, password);
    return UserModel.fromJson(res);
  }
}
