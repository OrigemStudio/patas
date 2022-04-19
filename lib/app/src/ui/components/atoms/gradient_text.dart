import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../../../patas_exports.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    Key? key,
    this.style,
    this.isInactive = false,
    this.gradient,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final bool isInactive;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    final gradientColor = gradient ?? ThemeService.gradients.gradientInactive;
    return AutoSizeText(text,
        style: style?.copyWith(
            foreground: Paint()
              ..shader = gradientColor
                  .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))));
  }
}
