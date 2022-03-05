import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patas/app/_exports.dart';

class Light {
  static ThemeData get data => ThemeData(
        colorScheme: ColorScheme.light(
            primary: ThemeColors.primaryLight,
            background: ThemeColors.backgroundLight),
        textTheme: GoogleFonts.ralewayTextTheme().copyWith(
            bodyText1: ThemeStyles.body(color: ThemeColors.bodyLight)),
        inputDecorationTheme: ThemeDecorations.darkInputDecoration,
      );
}
