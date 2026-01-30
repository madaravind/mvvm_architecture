import '../../core/network/api_client.dart';
import '../../core/constants/api_constants.dart';

class AuthService {
  final ApiClient _client = ApiClient();

  Future<Map<String, dynamic>> login(String email, String password) {
    return _client.post(
      ApiConstants.baseUrl + ApiConstants.login,
      {'email': email, 'password': password},
    );
  }
}
