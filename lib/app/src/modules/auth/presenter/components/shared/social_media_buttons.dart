import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../../patas_exports.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // UiLogoButton(
        //     onPressed: () => Modular.to.pushNamed(AppRoutes.createdEvent),
        //     logo: ThemeService.images.logoGoogle),
        // UiLogoButton(onPressed: () {}, logo: ThemeService.images.logoFacebook),
        // UiLogoButton(onPressed: () {}, logo: ThemeService.images.logoApple)
      ],
    );
  }
}
