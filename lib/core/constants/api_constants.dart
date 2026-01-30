import '../../app/env/env_manager.dart';

class ApiConstants {
  static final baseUrl = EnvManager.config.baseUrl;
  static const login = '/login';
  static const home = '/home';
}
