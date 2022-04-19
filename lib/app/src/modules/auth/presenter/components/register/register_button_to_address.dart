import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../../patas_exports.dart';

class RegisterButtonToAddress extends SmartView<RegisterCubit> {
  RegisterButtonToAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UiButton(
          onPressed: () => Modular.to.pushNamed(AppRoutes.registerAddress),
          label: 'sign_up'.tr(),
        );
  
  }
}
