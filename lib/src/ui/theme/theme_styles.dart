import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeStyles {
  TextStyle poppinRegular14({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 14,
      color: color ?? Colors.black,
    );
  }
}
