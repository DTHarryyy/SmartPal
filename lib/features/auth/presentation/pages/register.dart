import 'package:flutter/material.dart';
import 'package:smartpal/core/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/pages/login.dart';
import 'package:smartpal/features/auth/presentation/pages/user_information.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_header_text.dart';
import 'package:smartpal/features/auth/presentation/widgets/input_field.dart';
import 'package:smartpal/features/auth/presentation/widgets/text_link.dart';
import 'package:smartpal/features/auth/repository/auth_repository.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String errorMessage = "";
  void handleRegister(email, password, confirmPassword) async {
    if (email.text.trim().isEmpty || password.text.trim().isEmpty) {
      setState(() {
        errorMessage = "All fields are required";
      });
      return;
    }
    if (password.text != confirmPassword.text) {
      setState(() {
        errorMessage = 'Password do not much';
      });
      return;
    } else {
      await AuthRepository().signUp(email.text, password.text);

      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => UserInformation()),
      );
    }
  }

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
                CustomButton(
                  btnLabel: "Next",
                  onPressed: () =>
                      handleRegister(email, password, confirmPassword),
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
