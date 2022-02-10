import 'package:flutter/material.dart';

class Light {
  static ThemeData get data => ThemeData(
        colorScheme: const ColorScheme.light(
            primary: Colors.orange, background: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
        border: defautBorder,
        enabledBorder: defautBorder,
        focusedBorder: defautBorder,
        disabledBorder: defautBorder,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.green)),
      )
      );
}

OutlineInputBorder get defautBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.purple));