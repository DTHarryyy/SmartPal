import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartpal/core/constant/strings.dart';
import 'package:smartpal/features/chat_bot/pages/chat_bot_page.dart';

class SmartPal extends StatelessWidget {
  const SmartPal({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: Strings.appName,
          theme: ThemeData(primarySwatch: Colors.blue),
          debugShowCheckedModeBanner: false,
          home: const ChatBotPage(),
        );
      },
    );
  }
}
