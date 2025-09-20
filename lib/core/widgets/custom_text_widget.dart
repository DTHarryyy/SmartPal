import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String textValue;
  final double size;
  final Color colorValue;
  final FontWeight fontWeight;
  final Color? isDarkModeColor;
  const CustomTextWidget({
    super.key,
    required this.textValue,
    required this.size,
    required this.colorValue,
    required this.fontWeight,
    this.isDarkModeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,
      style: GoogleFonts.outfit(
        fontSize: size,
        color: colorValue,
        fontWeight: fontWeight,
      ),
    );
  }
}
