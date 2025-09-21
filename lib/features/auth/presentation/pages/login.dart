import 'package:flutter/material.dart';
import 'package:smartpal/core/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/pages/register.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_header_text.dart';
import 'package:smartpal/features/auth/presentation/widgets/input_field.dart';
import 'package:smartpal/features/auth/presentation/widgets/text_link.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
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
                CustomHeaderText(headerText: 'Welcome back!!!'),
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
                CustomButton(btnLabel: "Sign In", onPressed: () {}),
                Textlink(widgetRoute: Register(), linkLabel: 'Sign up here'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
