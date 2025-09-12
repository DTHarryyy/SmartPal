import 'package:flutter/material.dart';
import 'package:smartpal/features/auth/presentation/register.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_header_text.dart';
import 'package:smartpal/features/auth/presentation/widgets/input_field.dart';
import 'package:smartpal/features/auth/presentation/widgets/text_link.dart';
import 'package:smartpal/features/widget_tree.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                CustomHeaderText(headerText: 'Welcome Back!'),
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
                CustomElevatedbutton(
                  btnLabel: "SIGN IN",
                  widgetRoute: MainWidgetsTree(),
                ),
                Textlink(widgetRoute: Register(), linkLabel: 'Sign up here'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
