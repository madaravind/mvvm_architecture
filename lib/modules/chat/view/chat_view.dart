import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../app/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../data/models/chat/chat_message.dart';
import '../viewmodel/chat_view_model.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<ChatViewModel>();

    return Scaffold(
      appBar: _buildAppBar(context, vm),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                controller: vm.scrollCtrl,
                itemCount: vm.messages.length,
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  final msg = vm.messages[index];
                  return _buildMessageBubble(context,msg);
                },
              ),
            ),
            _buildInputArea(context, vm),
          ],
        ),
      ),
    );
  }

  // APP BAR
  PreferredSizeWidget _buildAppBar(BuildContext context, ChatViewModel vm) {
    return AppBar(
      elevation: 1,
      leadingWidth: 30,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () {
            Navigator.pushReplacementNamed(context,AppRoutes.home,);
          },
        ),
      ),
      title: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=12"),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mad Aravind",
                style: AppTextStyles.title(context),
              ),
              Text(
                vm.isConnected ? "Online" : "Connecting...",
                style: AppTextStyles.subTitle(context),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () {},
        ),
      ],
    );
  }


  // MESSAGE BUBBLE
  Widget _buildMessageBubble(BuildContext context,ChatMessage msg) {
    return Align(
      alignment: msg.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        constraints: const BoxConstraints(maxWidth: 280),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          //color: msg.isMe ? Colors.black12 : Colors.white,
          color: AppColors.messageBubble(context,isMe: msg.isMe),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: msg.isMe ? const Radius.circular(16) : Radius.zero,
            bottomRight: msg.isMe ? Radius.zero : const Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              msg.text,
              style: AppTextStyles.chatMsg(context,color: AppColors.darkPrimary),
            ),
            const SizedBox(height: 4),
            Text(
              msg.time,
              style: AppTextStyles.chatMsgTime(context,color: AppColors.darkPrimary),
            ),
          ],
        ),
      ),
    );
  }

  // INPUT AREA
  Widget _buildInputArea(BuildContext context, ChatViewModel vm) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xFFEEEEEE),width: 0.2)),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                controller: vm.textCtrl,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type a message...",
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => vm.sendMessage(),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.primary(context),
              child: Icon(Icons.send, color: Colors.white, size: 18),
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime time) {
    return "${time.hour}:${time.minute.toString().padLeft(2, '0')}";
  }
}
