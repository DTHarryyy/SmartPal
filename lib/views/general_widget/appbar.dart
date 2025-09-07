import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const CustomAppBar({super.key, this.height = 60});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(Icons.edit, color: Colors.white),
      ),

      title: Text(
        'SmartPal',
        style: GoogleFonts.outfit(fontWeight: FontWeight.w600),
      ),

      actions: [
        GestureDetector(onTap: () {}, child: Icon(Icons.notifications)),
      ],
      actionsPadding: EdgeInsets.symmetric(horizontal: 10),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
