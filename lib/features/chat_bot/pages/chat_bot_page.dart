import 'package:flutter/material.dart';
import 'package:smartpal/core/constant/app_text_styles.dart';
import 'package:smartpal/core/constant/strings.dart';
import 'package:smartpal/features/chat_bot/service/send_message_service.dart';
import 'package:smartpal/features/chat_bot/widgets/messages.dart';
import 'package:smartpal/features/chat_bot/widgets/messages_actions.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  final TextEditingController messageController = TextEditingController();
  final List<String> messages = [];

  void sendMessage() async {
    final message = messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        messages.add("you:  $message");
      });
      messageController.clear();

      final response = await SendMessageService().sendMessage(message);

      if (response != null) {
        setState(() {
          messages.add("bot:  $response");
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.chatBotName, style: AppTextStyles.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Messages(messages: messages)),
          MessagesActions(
            messageController: messageController,
            onSend: sendMessage,
          ),
        ],
      ),
    );
  }
}
