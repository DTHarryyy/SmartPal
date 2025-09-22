import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String textValue;
  final double size;
  final Color colorValue;
  final FontWeight? fontWeight;
  final Color? isDarkModeColor;
  final TextAlign? textAlign;
  const CustomTextWidget({
    super.key,
    required this.textValue,
    required this.size,
    required this.colorValue,
    this.fontWeight,
    this.isDarkModeColor,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.outfit(
        fontSize: size,
        color: colorValue,
        fontWeight: fontWeight,
      ),
    );
  }
}
