import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smartpal/core/constant/app_color.dart';
import 'package:smartpal/core/constant/app_sizes.dart';
import 'package:smartpal/core/widgets/custom_button.dart';
import 'package:smartpal/features/auth/presentation/login.dart';
import 'package:smartpal/features/auth/presentation/register.dart';
import 'package:smartpal/features/auth/presentation/widgets/text_link.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Lottie.asset('./assets/lotties/Book loading.json'),
            ),
            Text('We are what we do'),
            Text(
              'Thousand of people are using Smartpal for studying',
              style: GoogleFonts.outfit(
                color: AppColor.blackText,
                fontSize: AppSizes.fontMedium,
              ),
            ),
            CustomButton(
              btnLabel: 'SIGN UP',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
            ),
            Textlink(widgetRoute: Login(), linkLabel: 'Sign in here'),
          ],
        ),
      ),
    );
  }
}
