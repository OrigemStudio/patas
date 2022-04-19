import 'package:flutter/material.dart';

import '../../../../../../patas_exports.dart';

class UiGradientCircleButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget icon;
  const UiGradientCircleButton({Key? key, this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: ThemeService.gradients.gradientPrimary),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 22,
          child: icon,
        ),
      ),
    );
  }
}
