import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../patas_exports.dart';

class UiBackButton extends StatelessWidget {
  const UiBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.onPrimary,
      onTap: () => Modular.to.pop(),
      child: const GradientIcon(
        Icon(Icons.arrow_back_ios_outlined),
        24,
      ),
    );
  }
}
