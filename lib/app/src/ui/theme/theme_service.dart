import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../patas_exports.dart';

class ThemeService extends Cubit<ThemeData> {
  ThemeService() : super(Themes.light());

  void changeTheme() =>
      emit(state == Themes.dark() ? Themes.light() : Themes.dark());

  static ThemeColors get colors => ThemeColors();
  static ThemeImages get images => ThemeImages();
  static ThemeIcons get icons => ThemeIcons();
  static ThemeStrings get strings => ThemeStrings();
  static ThemeStyles get styles => ThemeStyles();
}
