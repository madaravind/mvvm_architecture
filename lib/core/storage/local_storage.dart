class LocalStorage {
  static String? token;

  static void saveToken(String t) => token = t;
  static void clear() => token = null;
}
