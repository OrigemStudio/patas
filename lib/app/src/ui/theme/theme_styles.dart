import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeStyles {
  TextStyle caption({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w300);
  }

  TextStyle title({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 42,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500);
  }

  TextStyle subTitle({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w100);
  }

  TextStyle litleTitle({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500);
  }

  TextStyle body({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w100);
  }

  TextStyle bodyBold({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w500);
  }

  TextStyle titlePrimary({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 36, color: color, fontWeight: FontWeight.w500);
  }

  TextStyle bodyPrimary({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 16, color: color, fontWeight: FontWeight.w300);
  }

  TextStyle bodyBasic({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 16,
        color: color ?? Colors.white,
        fontWeight: FontWeight.w300);
  }

  TextStyle button({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 20,
        color: color ?? Colors.white,
        fontWeight: FontWeight.w400);
  }

  TextStyle danger({Color? color}) {
    return GoogleFonts.raleway(
        fontSize: 16, color: color, fontWeight: FontWeight.w400);
  }
}
