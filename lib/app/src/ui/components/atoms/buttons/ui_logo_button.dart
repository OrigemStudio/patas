import 'package:flutter/material.dart';

class UiLogoButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String logo;
  const UiLogoButton({Key? key, required this.onPressed, required this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      width: 70,
      child: InkWell(
        onTap: onPressed,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Image.asset(
              logo,
              height: 28,
            ),
          ),
        ),
      ),
    );
  }
}
