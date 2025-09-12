import 'package:flutter/material.dart';
import 'package:smartpal/features/auth/presentation/login.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_header_text.dart';
import 'package:smartpal/features/auth/presentation/widgets/input_field.dart';
import 'package:smartpal/features/auth/presentation/widgets/text_link.dart';
import 'package:smartpal/features/pages/home/home_widgets_tree.dart';
import 'package:smartpal/features/widget_tree.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
                  inputController: emailController,
                  hintText: 'Email',
                  iconData: Icons.email_rounded,
                ),
                InputField(
                  inputController: passwordController,
                  hintText: 'Password',
                  iconData: Icons.remove_red_eye_rounded,
                ),
                InputField(
                  inputController: confirmPasswordController,
                  hintText: 'Confirm Password',
                  iconData: Icons.remove_red_eye_rounded,
                ),
                CustomElevatedbutton(
                  btnLabel: "SIGN UP",
                  widgetRoute: MainWidgetsTree(),
                ),
                Textlink(widgetRoute: Login(), linkLabel: 'Sign in here'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
