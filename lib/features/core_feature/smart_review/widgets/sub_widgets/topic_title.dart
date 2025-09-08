import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopicTitle extends StatelessWidget {
  final String topicTitle;
  const TopicTitle({super.key, required this.topicTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      topicTitle,
      style: GoogleFonts.outfit(
        fontSize: 24,
        height: 2.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
