import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get displayLarge => GoogleFonts.dmSans(
        fontSize: 32, fontWeight: FontWeight.w700, letterSpacing: -0.5);

  static TextStyle get displayMedium => GoogleFonts.dmSans(
        fontSize: 28, fontWeight: FontWeight.w700, letterSpacing: -0.3);

  static TextStyle get headlineLarge => GoogleFonts.dmSans(
        fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: -0.3);

  static TextStyle get headlineMedium => GoogleFonts.dmSans(
        fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: -0.2);

  static TextStyle get titleLarge => GoogleFonts.dmSans(
        fontSize: 18, fontWeight: FontWeight.w600);

  static TextStyle get titleMedium => GoogleFonts.dmSans(
        fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle get bodyLarge => GoogleFonts.dmSans(
        fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle get bodyMedium => GoogleFonts.dmSans(
        fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle get bodySmall => GoogleFonts.dmSans(
        fontSize: 12, fontWeight: FontWeight.w400);

  static TextStyle get labelLarge => GoogleFonts.dmSans(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1);

  static TextStyle get labelMedium => GoogleFonts.dmSans(
        fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.1);

  static TextStyle get labelSmall => GoogleFonts.dmSans(
        fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 0.2);
}
