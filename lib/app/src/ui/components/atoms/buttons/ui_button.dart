import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../patas_exports.dart';

class UiButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final ThemeType themeType;
  final bool isMini;
  final EdgeInsets? padding;
  final bool isLoading;
  const UiButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.themeType = ThemeType.primary,
    this.isMini = false,
    this.padding,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradient = Paint()..shader = GetButtonTextColor.call(themeType);
    return InkWell(
      onTap: onPressed,
      child: Card(
        margin: padding ?? const EdgeInsets.all(0),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
            height: isMini ? 40 : 56,
            width: isLoading
                ? 100
                : isMini
                    ? MediaQuery.of(context).size.width / 3
                    : null,
            decoration: BoxDecoration(
                gradient: GetButtonColor.call(themeType),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: isLoading
                  ? const UiLoading()
                  : AutoSizeText(
                      label,
                      style: isMini
                          ? Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(foreground: gradient)
                          : Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(foreground: gradient),
                    ),
            )),
      ),
    );
  }
}
