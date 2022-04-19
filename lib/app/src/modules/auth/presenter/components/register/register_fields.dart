import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../../patas_exports.dart';

class RegisterFields extends SmartView<RegisterCubit> {
  RegisterFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: bloc.registerForm.form,
      child: Column(
        children: [
          UiField(
            formControlName: 'name',
            labelText: 'name'.tr(),
            type: TextfieldType.text,
            // prefix: SizedBox(
            //     height: 10, child: ThemeService.icons.accountCircleIcon())
          ),
          const SizedBox(height: 16),
          UiField(
              formControlName: 'email',
              labelText: 'email'.tr(),
              type: TextfieldType.email,
              prefix:
                  SizedBox(height: 10, child: ThemeService.icons.emailIcon())),
          const SizedBox(height: 16),
          Row(
            children: [
              // Flexible(flex: 4, child: RegisterPhoneCountryDropdown()),
              const SizedBox(width: 4),
              Flexible(
                flex: 8,
                child: UiField(
                  formControlName: 'phone',
                  labelText: 'phone'.tr(),
                  type: TextfieldType.phone,
                  // prefix: SizedBox(
                  //     height: 10, child: ThemeService.icons.phoneIcon())
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ReactiveFormConsumer(builder: (context, form, child) {
            return Column(
              children: [
                UiField(
                    formControlName: 'password',
                    labelText: 'password'.tr(),
                    hintText: 'password'.tr(),
                    type: TextfieldType.password,
                    obscureText: bloc.registerForm.showPassword,
                    // prefix: ThemeService.icons.lockIcon(),
                    suffix: InkWell(
                      onTap: () => bloc.registerForm.setShowPassword(),
                      child: bloc.registerForm.showPassword
                          ? ThemeService.icons.eyeOffIcon()
                          : ThemeService.icons.eyeIcon(),
                    )),
                const SizedBox(height: 16),
                UiField(
                    formControlName: 'password_confirmation',
                    labelText: 'password_confirmation'.tr(),
                    hintText: 'password_confirmation'.tr(),
                    type: TextfieldType.password,
                    obscureText: bloc.registerForm.showPasswordConfirmation,
                    // prefix: ThemeService.icons.lockIcon(),
                    suffix: InkWell(
                      onTap: () =>
                          bloc.registerForm.setShowPasswordConfirmation(),
                      child: bloc.registerForm.showPassword
                          ? ThemeService.icons.eyeOffIcon()
                          : ThemeService.icons.eyeIcon(),
                    )),
                const SizedBox(height: 16),
              ],
            );
          })
        ],
      ),
    );
  }
}
