import 'package:flutter/material.dart';

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

      title: Text('SmartPal'),

      actions: [
        GestureDetector(onTap: () {}, child: Icon(Icons.notifications)),
      ],
      actionsPadding: EdgeInsets.symmetric(horizontal: 10),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
