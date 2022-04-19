import 'package:flutter/material.dart';

import '../../../../../patas_exports.dart';

class GradientIcon extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const GradientIcon(
    this.icon,
    this.size, {
    this.isInactive = false,
    this.gradient,
  });

  final Widget icon;
  final double size;
  final bool isInactive;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    final finalGradient = isInactive
        ? ThemeService.gradients.gradientInactive
        : gradient ?? ThemeService.gradients.gradientPrimary;
    return ShaderMask(
      child: icon,
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return finalGradient.createShader(rect);
      },
    );
  }
}
