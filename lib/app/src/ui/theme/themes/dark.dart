import 'package:flutter/material.dart';

class Dark {
  static ThemeData get data => ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.orangeAccent,
          background: Colors.black,
        ),
      );
}
