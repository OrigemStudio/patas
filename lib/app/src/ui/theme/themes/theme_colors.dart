import 'package:flutter/material.dart';

class ThemeColors {
  static Color get primaryDark => const Color(0xFF20D2BD);
  static Color get secondaryDark => const Color(0xFF15B5A1);
  static Color get backgroundDark => const Color(0xFFF5FEFF);
  static Color get primaryLight => const Color(0xFF20D2BD);
  static Color get secondaryLight => const Color(0xFF15B5A1);
  static Color get backgroundLight => const Color(0xFFF5FEFF);
  static Color get border => const Color.fromARGB(40, 32, 210, 189);
  static Color get danger => const Color(0xFFB04141);
  static Color get bodyLight => const Color(0x00000000);
  static Color get bodyDark => const Color(0xFFFFFFFF);

  static Color get boxShadowColor => const Color(0x0F707a85);

  static BoxShadow get boxShadow => const BoxShadow(
        color: Color(0x0F707a85),
        offset: Offset(0, 5),
        blurRadius: 7,
      );

  static LinearGradient get gradientCardUser => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF5153b7),
          Color(0xFF3E4095),
        ],
      );

  static LinearGradient get gradientAvatarDados => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 24, 177, 94),
          Color.fromARGB(255, 0, 144, 66),
        ],
      );

  static LinearGradient get gradientCardValorem => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          //const Color(0xFFf44336),
          //Colors.redAccent,
          Color(0xFF387673),
          Color(0xFF325a57),
        ],
      );
}
