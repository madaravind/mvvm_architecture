import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<Map<String, dynamic>> post(String url, Map body) async {
    final res = await http.post(Uri.parse(url), body: body);
    return jsonDecode(res.body);
  }
}
