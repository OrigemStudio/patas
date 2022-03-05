import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patas/app/_exports.dart';

class ThemeStyles {
  static TextStyle caption({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w300);
  }

  static TextStyle title({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 42,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500);
  }

  static TextStyle subTitle({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w100);
  }

  static TextStyle litleTitle({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500);
  }

  static TextStyle body({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w100);
  }

  static TextStyle bodyBold({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500);
  }

  static TextStyle titlePrimary({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 36, color: color, fontWeight: FontWeight.w500);
  }

  static TextStyle bodyPrimary({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 16, color: color, fontWeight: FontWeight.w300);
  }

  static TextStyle bodyBasic({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 16,
        color: color ?? ThemeColors.primaryDark,
        fontWeight: FontWeight.w300);
  }

  static TextStyle button({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? ThemeColors.primaryDark,
        fontWeight: FontWeight.w400);
  }

  static TextStyle danger({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 16, color: color, fontWeight: FontWeight.w400);
  }
}
