import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UiLinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const UiLinkButton(this.text, {required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: AutoSizeText(
        text,
        style: Theme.of(context).textTheme.headline2?.copyWith(
            decoration: TextDecoration.underline,
            color: Theme.of(context).colorScheme.tertiary),
      ),
    );
  }
}
