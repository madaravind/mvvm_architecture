class HomeRepository {
  Future<String> fetchMessage() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'Welcome Home';
  }
}
