import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../data/models/chat/chat_message.dart';
import '../../../data/services/chat_socket_service.dart';

class ChatViewModel extends ChangeNotifier {
  final ChatSocketService _socketService;

  ChatViewModel(this._socketService);

  final List<ChatMessage> messages = [];
  bool isConnected = false;
  String mThreadId = "";

  final textCtrl = TextEditingController();
  final scrollCtrl = ScrollController();

  final String socketUrl =
      'ws://192.168.0.103:8080/ws?ws_key=YOUR_KEY';

  void init() {
    _socketService.connect(socketUrl, _onMessage);
    isConnected = true;
    notifyListeners();
  }

  void _onMessage(dynamic data) {
    final jsonData = jsonDecode(data);
    final msg = ChatMessage.fromJson(jsonData);

    messages.insert(0, msg);
    notifyListeners();
    _scrollToBottom();
  }

  void sendMessage() {
    final text = textCtrl.text.trim();
    if (text.isEmpty) return;

    final localMsg = ChatMessage(
      text: text,
      isMe: true,
      time: _now(),
    );

    final payload = {
      "msg": text,
      "attachments": []
    };

    messages.insert(0, localMsg);
    notifyListeners();

    _socketService.send(payload);
    textCtrl.clear();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (scrollCtrl.hasClients) {
        scrollCtrl.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  String _now() {
    final t = DateTime.now();
    return "${t.hour}:${t.minute}";
  }

  @override
  void dispose() {
    _socketService.disconnect();
    textCtrl.dispose();
    scrollCtrl.dispose();
    super.dispose();
  }
}
