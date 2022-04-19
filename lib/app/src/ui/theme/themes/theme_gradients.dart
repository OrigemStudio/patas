import 'package:flutter/material.dart';

class ThemeGradients {
  LinearGradient get gradientPrimary => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFF6A006F),
          Color(0xFFB41E8E),
        ],
      );

  LinearGradient get gradientSecondary => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFFFFFFFF),
        ],
      );

  LinearGradient get gradientTertiary => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFFFFC801),
          Color(0xFFF27525),
        ],
      );

  LinearGradient get gradientConfirm => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFF4CAF50),
          Color(0xFF4CAF50),
        ],
      );

  LinearGradient get gradientGreen => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFF64F1C7),
          Color(0xFF14DB7B),
        ],
      );

  LinearGradient get gradientInactive => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.grey,
          Color(0xFFFFFFFF),
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
