import 'env.dart';
import 'app_config.dart';
import 'dev_config.dart';
import 'prod_config.dart';

class EnvManager {
  static late AppConfig config;

  static void init(Environment env) {
    switch (env) {
      case Environment.dev:
        config = DevConfig();
        break;
      case Environment.prod:
        config = ProdConfig();
        break;
    }
  }
}
