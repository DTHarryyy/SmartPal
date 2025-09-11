import 'package:flutter/material.dart';
import 'package:smartpal/features/auth/presentation/welcome.dart';

void main() {
  runApp(const SmartPal());
}

class SmartPal extends StatelessWidget {
  const SmartPal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      home: Welcome(),
    );
  }
}
