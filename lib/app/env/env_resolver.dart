import 'env.dart';

class EnvResolver {
  static Environment get current {
    const isProd = bool.fromEnvironment('dart.vm.product');
    return isProd ? Environment.prod : Environment.dev;
  }
}
