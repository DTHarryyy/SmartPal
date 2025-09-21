import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartpal/core/constant/app_sizes.dart';

class InputField extends StatelessWidget {
  final TextEditingController inputController;
  final String hintText;
  final IconData iconData;
  const InputField({
    super.key,
    required this.inputController,
    required this.hintText,
    required this.iconData,
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
      child: Row(
        children: [
          Icon(iconData, color: Colors.black26),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: inputController,

              decoration: InputDecoration(
                border: InputBorder.none,
                hint: Text(hintText),
                hintStyle: GoogleFonts.outfit(fontSize: AppSizes.fontSmall),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
