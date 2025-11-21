import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartpal/core/constant/font_size.dart';
import 'package:smartpal/core/constant/font_weight.dart';

class AppTextStyles {
  static TextStyle heading = TextStyle(
    fontSize: FontSizes.headline,
    fontWeight: FontWeights.bold,
    color: Colors.black,
  );

  static TextStyle title = GoogleFonts.outfit(
    fontSize: FontSizes.xl,
    fontWeight: FontWeights.semiBold,
    color: Colors.black87,
  );

  static TextStyle bodyText = GoogleFonts.outfit(
    fontSize: FontSizes.md,
    fontWeight: FontWeights.regular,
    color: Colors.black54,
  );

  static TextStyle caption = GoogleFonts.outfit(
    fontSize: FontSizes.sm,
    fontWeight: FontWeights.medium,
    color: Colors.grey,
  );
  static TextStyle subCaption = GoogleFonts.outfit(
    fontSize: FontSizes.xs,
    fontWeight: FontWeights.medium,
    color: Colors.grey,
  );
}
