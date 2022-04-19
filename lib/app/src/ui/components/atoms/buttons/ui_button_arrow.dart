import 'package:flutter/material.dart';
import '../../../../../../patas_exports.dart';

class UiButtonArrow extends StatelessWidget {
  final Function onPressed;
  final ThemeType themeType;
  final bool isMini;
  const UiButtonArrow({
    Key? key,
    required this.onPressed,
    this.themeType = ThemeType.primary,
    this.isMini = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => themeType == ThemeType.inactive ? null : onPressed(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                gradient: GetButtonColor.call(themeType),
                borderRadius: BorderRadius.circular(8)),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            )),
      ),
    );
  }
}
