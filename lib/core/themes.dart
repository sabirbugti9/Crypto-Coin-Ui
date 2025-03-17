import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.robotoFlex().fontFamily,
  scaffoldBackgroundColor: CTColors.backgroundColor,
);

class CTColors {
  static const Color black = Color(0xFF0B0A12);
  static const Color backgroundColor = Color(0xFFCFD6C6);
  static const Color leftGradientDark = Color(0xFFA775CE);
  static const Color leftGradientLight = Color(0xFFB16CBE);
  static const Color rightGradientDark = Color(0xFFD87091);
  static const Color rightGradientLight = Color(0xFFD99CA1);
}
