import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patas/app/_exports.dart';

class Dark {
  static ThemeData get data => ThemeData(
      
      colorScheme: ColorScheme.dark(
        primary: ThemeColors.primaryDark,
        background: ThemeColors.backgroundDark,
      ),
      textTheme: GoogleFonts.ralewayTextTheme()
          .copyWith(bodyText1: ThemeStyles.body(color: ThemeColors.bodyDark)),
      inputDecorationTheme: ThemeDecorations.darkInputDecoration);
}
