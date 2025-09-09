import 'package:flutter/material.dart';
import 'package:smartpal/features/auth/presentation/login.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_header_text.dart';
import 'package:smartpal/features/auth/presentation/widgets/input_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomHeaderText(headerText: 'Create your account'),
              InputField(inputController: emailController, hintText: 'Email'),
              InputField(
                inputController: passwordController,
                hintText: 'Password',
              ),
              CustomElevatedbutton(btnLabel: "LOG IN", widgetRoute: Login()),
            ],
          ),
        ),
      ),
    );
  }
}
