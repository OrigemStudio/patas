import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../../patas_exports.dart';

class RegisterTextButton extends StatelessWidget {
  const RegisterTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText('dont_have_account'.tr(),
            style: theme.textTheme.headline2?.copyWith(
              color: theme.colorScheme.primary,
            )),
        UiLinkButton(
          'sign_up'.tr(),
          onPressed: () => Modular.to.pushNamed(AppRoutes.register),
        )
      ],
    );
  }
}
