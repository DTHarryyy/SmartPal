import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedbutton extends StatelessWidget {
  final Widget widgetRoute;
  final String btnLabel;
  const CustomElevatedbutton({
    super.key,
    required this.btnLabel,
    required this.widgetRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widgetRoute),
          );
        },

        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[400]),
        child: Text(btnLabel, style: GoogleFonts.outfit(color: Colors.white)),
      ),
    );
  }
}
