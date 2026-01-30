import 'dart:developer';

class AppLogger {
  static void logInfo(String message) {
    log(message, name: 'INFO');
  }

  static void logError(String message) {
    log(message, name: 'ERROR');
  }
}
