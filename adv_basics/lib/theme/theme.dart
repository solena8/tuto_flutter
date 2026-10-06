import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final TextStyle defaultFont =
      GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold);

  static const double edgeS = 8.0;
  static const double edgeM = 16.0;
  static const double edgeL = 24.0;
  static const double edgeXL = 40.0;

  static const double sizedboxXXL = 300.0;
  static const double sizedboxL = 80.0;
  static const double sizedboxM = 30.0;

  static const SizedBox spaceS = SizedBox(height: 8.0);
  static const SizedBox spaceM = SizedBox(height: 16.0);
  static const SizedBox spaceL = SizedBox(height: 24.0);

  static const Color primaryColor = Color.fromARGB(255, 170, 13, 200);
  static const Color secondaryColor = Color.fromARGB(200, 50, 15, 168);
  static const Color textColor = Color.fromARGB(255, 201, 153, 251);
  static const Color backgroundColor = Color.fromARGB(150, 255, 255, 255);
  static const Color buttonBackgroundColor = Color.fromARGB(255, 33, 1, 95);
}
