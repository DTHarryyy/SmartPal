import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final List<String> messages;
  const Messages({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: messages.length,

      itemBuilder: (context, index) {
        final msg = messages[messages.length - 1 - index];

        return ListTile(title: Text(msg));
      },
    );
  }
}
