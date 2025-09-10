import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smartpal/features/auth/presentation/login.dart';
import 'package:smartpal/features/auth/presentation/register.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/widgets/custom_header_text.dart';
import 'package:smartpal/features/auth/presentation/widgets/textLink.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Lottie.asset('./assets/lotties/Book loading.json'),
            ),
            CustomHeaderText(headerText: 'We are what we do'),
            Text(
              'Thousand of people are using Smartpal for studying',
              style: GoogleFonts.outfit(color: Colors.black45, fontSize: 14),
            ),
            CustomElevatedbutton(btnLabel: 'SIGN UP', widgetRoute: Register()),
            Textlink(widgetRoute: Login(), linkLabel: 'Sign in here'),
          ],
        ),
      ),
    );
  }
}
