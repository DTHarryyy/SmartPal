import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartpal/core/constant/app_color.dart';

class CustomButton extends StatelessWidget {
  final String btnLabel;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.btnLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(backgroundColor: AppColor.primary),
        child: Text(
          btnLabel,
          style: GoogleFonts.outfit(color: AppColor.whiteText),
        ),
      ),
    );
  }
}
