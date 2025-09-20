import 'package:flutter/material.dart';

class AppSizes {
  static const double paddingY = 12.0;
  static const double paddingX = 16.0;

  static const double radius = 12.0;

  // Font sizes
  static const double fontSmall = 12.0;
  static const double fontMedium = 16.0;
  static const double fontLarge = 20.0;

  //device size
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
