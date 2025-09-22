import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smartpal/core/constant/app_color.dart';
import 'package:smartpal/core/constant/app_sizes.dart';
import 'package:smartpal/core/widgets/custom_button.dart';
import 'package:smartpal/core/widgets/custom_text_widget.dart';
import 'package:smartpal/features/auth/presentation/pages/login.dart';
import 'package:smartpal/features/auth/presentation/pages/register.dart';
import 'package:smartpal/features/auth/presentation/widgets/text_link.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: AppSizes.screenHeight(context),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Lottie.asset('./assets/lotties/Book loading.json'),
              ),
              CustomTextWidget(
                textValue: 'We are what we do',
                size: AppSizes.fontXLarge,
                colorValue: AppColor.blackText,
                fontWeight: FontWeight.w600,
              ),
              CustomTextWidget(
                textValue: 'Thousand of people are using Smartpal for studying',
                size: AppSizes.fontMedium,
                colorValue: AppColor.paragraphText,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
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
      ),
    );
  }
}
