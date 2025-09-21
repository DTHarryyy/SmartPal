import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHeaderText extends StatelessWidget {
  final String headerText;

  const CustomHeaderText({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: GoogleFonts.outfit(
        fontSize: 24,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
