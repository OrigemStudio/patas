import 'package:flutter/material.dart';

class ThemeColors {
  Color get primary => const Color(0xFF4CAF50);
  Color get secondary => const Color(0xFF4CAF50);
  Color get background => const Color(0xFFFFFFFF);

  Color get boxShadowColor => const Color(0x0F707a85);

  BoxShadow get boxShadow => const BoxShadow(
        color: Color(0x0F707a85),
        offset: Offset(0, 5),
        blurRadius: 7,
      );

  LinearGradient get gradientCardUser => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF5153b7),
          Color(0xFF3E4095),
        ],
      );

  LinearGradient get gradientAvatarDados => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 24, 177, 94),
          Color.fromARGB(255, 0, 144, 66),
        ],
      );

  LinearGradient get gradientCardValorem => const LinearGradient(
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
