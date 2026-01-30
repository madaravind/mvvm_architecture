import 'app_config.dart';

class DevConfig implements AppConfig {
  @override
  String get baseUrl => 'https://dev-api.yourapp.com';

  @override
  bool get enableLogs => true;
}
