import 'package:easy_localization/easy_localization.dart';

import '../../../../../../../patas_exports.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthFields extends SmartView<AuthCubit> {
  AuthFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: bloc.authForm.form,
      child: Column(
        children: [
          UiField(
            formControlName: 'login',
            labelText: 'email'.tr(),
            type: TextfieldType.email,
          ),
          const SizedBox(height: 16),
          ReactiveFormConsumer(builder: (context, form, child) {
            return UiField(
              formControlName: 'password',
              labelText: 'password'.tr(),
              type: TextfieldType.password,
              // obscureText: cubit.authForm.showPassword,
              // prefix: ThemeService.icons.lockIcon(),
              // suffix: InkWell(
              //   onTap: () => bloc.authForm.setShowPassword(),
              //   child: bloc.authForm.showPassword
              //       ? ThemeService.icons.eyeOffIcon()
              //       : ThemeService.icons.eyeOnIcon(),
              // ));
            );
          })
        ],
      ),
    );
  }
}
