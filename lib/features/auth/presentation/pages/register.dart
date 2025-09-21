import 'package:flutter/material.dart';
import 'package:smartpal/core/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/pages/login.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_header_text.dart';
import 'package:smartpal/features/auth/presentation/widgets/input_field.dart';
import 'package:smartpal/features/auth/presentation/widgets/text_link.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomHeaderText(headerText: 'Create your account'),
                InputField(
                  inputController: email,
                  hintText: 'Email',
                  iconData: Icons.email_rounded,
                ),
                InputField(
                  inputController: password,
                  hintText: 'Password',
                  iconData: Icons.remove_red_eye_rounded,
                ),
                InputField(
                  inputController: confirmPassword,
                  hintText: 'Confirm Password',
                  iconData: Icons.remove_red_eye_rounded,
                ),
                CustomButton(btnLabel: "Next", onPressed: () {}),
                Textlink(widgetRoute: Login(), linkLabel: 'Sign in here'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
