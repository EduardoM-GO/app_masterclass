import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class FonteCustom {
  static TextStyle get headline1 => GoogleFonts.poppins(
      fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5);
  static TextStyle get headline2 => GoogleFonts.poppins(
      fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5);
  static TextStyle get headline3 =>
      GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.w400);
  static TextStyle get headline4 => GoogleFonts.poppins(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25);
  static TextStyle get headline5 =>
      GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w400);
  static TextStyle get headline6 => GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15);
  static TextStyle get subtitle1 => GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15);
  static TextStyle get subtitle2 => GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1);
  static TextStyle get bodyText1 => GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5);
  static TextStyle get bodyText2 => GoogleFonts.montserrat(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25);
  static TextStyle get button => GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25);
  static TextStyle get caption => GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4);
  static TextStyle get overline => GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5);
}
