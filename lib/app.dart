import 'package:flutter/material.dart';
import 'package:smartpal/core/constant/app_strings.dart';
import 'package:smartpal/widgets_tree.dart';

class SmartPal extends StatelessWidget {
  const SmartPal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: WidgetsTree(),
    );
  }
}
