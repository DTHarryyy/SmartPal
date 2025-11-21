import 'package:flutter/material.dart';
import 'package:smartpal/core/constant/app_color.dart';
import 'package:smartpal/core/constant/paddings.dart';
import 'package:smartpal/core/constant/strings.dart';

class MessagesActions extends StatefulWidget {
  final TextEditingController messageController;
  final VoidCallback onSend;
  const MessagesActions({
    super.key,
    required this.messageController,
    required this.onSend,
  });

  @override
  State<MessagesActions> createState() => _MessagesActionsState();
}

class _MessagesActionsState extends State<MessagesActions> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Paddings.medium),
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border(top: BorderSide(color: AppColor.lightGray, width: 1)),
      ),
      child: Row(
        children: [
          IconButton(icon: const Icon(Icons.attach_file), onPressed: () {}),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 5),
              decoration: BoxDecoration(
                color: AppColor.lightGray,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: TextField(
                        controller: widget.messageController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                          hintText: Strings.chatBotInputHint,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    decoration: const BoxDecoration(
                      color: AppColor.primary,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.send, color: AppColor.white),
                      onPressed: widget.onSend,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
