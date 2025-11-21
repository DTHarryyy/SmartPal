import 'package:flutter/material.dart';
import 'package:smartpal/core/constant/app_color.dart';
import 'package:smartpal/core/widgets/custom_text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const CustomAppBar({super.key, this.height = 60});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        toolbarHeight: height,
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
          backgroundColor: AppColor.primary,
          child: Icon(Icons.edit, color: Colors.white),
        ),

        title: CustomTextWidget(
          textValue: 'SmartPal',
          size: 20,
          colorValue: Colors.black87,
          fontWeight: FontWeight.w600,
          isDarkModeColor: Colors.white,
        ),

        actions: [
          GestureDetector(onTap: () {}, child: Icon(Icons.notifications)),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 10),
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
