import 'package:flutter/material.dart';
import 'package:smartpal/features/auth/presentation/login.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_elevated_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedbutton(btnLabel: "LOG IN", widgetRoute: Login()),
          ],
        ),
      ),
    );
  }
}
