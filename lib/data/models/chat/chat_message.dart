import 'dart:convert';

class ChatMessage {
  String text;
  bool isMe;
  String time;

  ChatMessage({
    required this.text,
    required this.isMe,
    required this.time,
  });

  // Convert incoming JSON from server to a Message object
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      text: json['text'] ?? "",
      // If the sender ID matches my ID, it's me. Change 'my_user_id' to your logic.
      isMe: json['senderId'] == 'my_user_id',
      time: json['time'] ?? "",
    );
  }

  // Convert Message object to JSON string to send to server
  String toJson() {
    return jsonEncode({
      "text": text,
      "senderId": isMe ? "my_user_id" : "other_user_id",
      "time": time,
    });
  }
}