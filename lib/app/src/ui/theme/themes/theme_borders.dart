import 'package:flutter/material.dart';

class ThemeBorders {
  static OutlineInputBorder get darkDefautBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.blue));

  static OutlineInputBorder get lightDefautBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.purple));

  static OutlineInputBorder get errorDefautBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.red));
}
