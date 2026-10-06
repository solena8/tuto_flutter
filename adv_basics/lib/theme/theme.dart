
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  static final TextStyle defaultFont = GoogleFonts.lato(
    fontSize: 15,
    fontWeight: FontWeight.bold);

  static const double edgeSmall = 8.0;
  static const double edgeMedium = 16.0;
  static const double edgeLarge = 24.0;
  static const double pXLarge = 40.0;

  static const double sizedboxXXL = 300.0;
  static const double indexCircleSize = 30.0;

  static const SizedBox spaceS = SizedBox(height: 8.0);
  static const SizedBox spaceM = SizedBox(height: 16.0);
  static const SizedBox spaceL = SizedBox(height: 24.0);

  static const Color summaryQuestionTextColor = Color.fromARGB(255, 201, 153, 251);

}