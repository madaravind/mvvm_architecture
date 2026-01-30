class Validators {
  static bool isEmailValid(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return password.length >= 6;
  }
}
