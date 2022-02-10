import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dark {
  static ThemeData get data => ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.red,
          background: Colors.black,
        ),
        textTheme: GoogleFonts.ralewayTextTheme().copyWith(
            bodyText1: const TextStyle(
          color: Colors.white,
        )),
    inputDecorationTheme: InputDecorationTheme(
        border: defautBorderDark,
        enabledBorder: defautBorderDark,
        focusedBorder: defautBorderDark,
        disabledBorder: defautBorderDark,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red)),
      labelStyle: GoogleFonts.raleway(),
      hintStyle: GoogleFonts.raleway(),
      errorStyle: GoogleFonts.aBeeZee(),
    )

      );
}

OutlineInputBorder get defautBorderDark => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: Colors.blue));
