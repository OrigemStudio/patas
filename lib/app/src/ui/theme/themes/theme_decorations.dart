import 'package:flutter/material.dart';
import 'package:patas/app/_exports.dart';

class ThemeDecorations {
  static InputDecorationTheme get darkInputDecoration => InputDecorationTheme(
        border: ThemeBorders.darkDefautBorder,
        enabledBorder: ThemeBorders.darkDefautBorder,
        focusedBorder: ThemeBorders.darkDefautBorder,
        disabledBorder: ThemeBorders.darkDefautBorder,
        errorBorder: ThemeBorders.errorDefautBorder,
        labelStyle: ThemeStyles.caption(),
        hintStyle: ThemeStyles.body(),
        errorStyle: ThemeStyles.danger(),
      );

  static InputDecorationTheme get lightInputDecoration => InputDecorationTheme(
        border: ThemeBorders.lightDefautBorder,
        enabledBorder: ThemeBorders.lightDefautBorder,
        focusedBorder: ThemeBorders.lightDefautBorder,
        disabledBorder: ThemeBorders.lightDefautBorder,
        errorBorder: ThemeBorders.errorDefautBorder,
        labelStyle: ThemeStyles.caption(),
        hintStyle: ThemeStyles.body(),
        errorStyle: ThemeStyles.danger(),
      );
}
