import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textlink extends StatelessWidget {
  final Widget widgetRoute;
  final String linkLabel;
  const Textlink({
    super.key,
    required this.widgetRoute,
    required this.linkLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already Have an account? ',
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.black38,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => widgetRoute),
            );
          },
          child: Text(linkLabel, style: TextStyle(color: Colors.blue[400])),
        ),
      ],
    );
  }
}
