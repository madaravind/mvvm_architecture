import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatSocketService {
  late WebSocketChannel _channel;

  void connect(String url, void Function(dynamic) onMessage) {
    _channel = WebSocketChannel.connect(Uri.parse(url));
    _channel.stream.listen(onMessage);
  }

  void send(Map<String, dynamic> data) {
    _channel.sink.add(jsonEncode(data));
  }

  void disconnect() {
    _channel.sink.close();
  }
}
