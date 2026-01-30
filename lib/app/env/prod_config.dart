import 'app_config.dart';

class ProdConfig implements AppConfig {
  @override
  String get baseUrl => 'https://api.yourapp.com';

  @override
  bool get enableLogs => false;
}
