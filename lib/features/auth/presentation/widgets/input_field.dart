import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController inputController;
  final String hintText;
  const InputField({
    super.key,
    required this.inputController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: inputController,

        decoration: InputDecoration(
          border: InputBorder.none,
          hint: Text(hintText),
        ),
      ),
    );
  }
}
