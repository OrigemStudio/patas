import 'package:flutter/material.dart';

import '../../../../../../patas_exports.dart';

class GetButtonTextColor {
  static Shader call(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.primary:
        return ThemeService.gradients.gradientSecondary
            .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
      case ThemeType.secondary:
        return ThemeService.gradients.gradientPrimary
            .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
      case ThemeType.confirm:
        return ThemeService.gradients.gradientSecondary
            .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

      default:
        return ThemeService.gradients.gradientSecondary
            .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    }
  }
}
