import 'package:flutter/material.dart';

import '../../../../../../patas_exports.dart';

class GetButtonColor {
  static Gradient call(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.primary:
        return ThemeService.gradients.gradientPrimary;
      case ThemeType.secondary:
        return ThemeService.gradients.gradientSecondary;
      case ThemeType.tertiary:
        return ThemeService.gradients.gradientTertiary;
      case ThemeType.confirm:
        return ThemeService.gradients.gradientConfirm;
      case ThemeType.inactive:
        return ThemeService.gradients.gradientInactive;
      default:
        return ThemeService.gradients.gradientPrimary;
    }
  }
}
