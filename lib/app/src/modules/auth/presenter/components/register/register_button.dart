import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../../patas_exports.dart';

class RegisterButton extends SmartView<RegisterCubit> {
  RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartConsumer<RegisterCubit, AuthorizedEntity>(
      bloc: bloc,
      listenValue: (_, value) => Modular.to
          .pushNamedAndRemoveUntil(AppRoutes.home, ModalRoute.withName('/')),
      listenError: (_, error) => debugPrint(error.message ?? ''),
      buildValue: (_, value, isSubmit) {
        return UiButton(
          isLoading: isSubmit,
          onPressed: () async {
            print('aqui');
            final isValid = bloc.registerForm.form.valid;
            print(isValid);
            print(bloc.registerForm.form.errors);
            isValid
                ? await cubit.onSubmit()
                : () => bloc.registerForm.showErrors();
          },
          label: 'sign_up'.tr(),
        );
      },
    );
  }
}
