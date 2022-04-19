import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:patas/app/_exports.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddressFields extends StatelessWidget {
  final FormGroup formGroup;
  const AddressFields({Key? key, required this.formGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: formGroup,
      child: Column(
        children: [
          UiField(
            formControlName: 'cep',
            labelText: 'cep'.tr(),
            type: TextfieldType.cep,
          ),
          ReactiveFormConsumer(builder: (context, form, child) {
            return Column(
              children: [
                const SizedBox(height: 16),
                UiField(
                    formControlName: 'street',
                    labelText: 'street'.tr(),
                    type: TextfieldType.text,
                    prefix: SizedBox(
                        height: 10, child: ThemeService.icons.emailIcon())),
                const SizedBox(height: 16),
                UiField(
                  formControlName: 'number',
                  labelText: 'number'.tr(),
                  type: TextfieldType.text,
                  // prefix: SizedBox(
                  //     height: 10, child: ThemeService.icons.phoneIcon())
                ),
                const SizedBox(height: 16),
                UiField(
                  formControlName: 'neighborhood',
                  labelText: 'neighborhood'.tr(),
                  hintText: 'neighborhood'.tr(),
                  type: TextfieldType.text,
                ),
                const SizedBox(height: 16),
                UiField(
                  formControlName: 'city',
                  labelText: 'city'.tr(),
                  hintText: 'city'.tr(),
                  type: TextfieldType.text,
                ),
                const SizedBox(height: 16),
                UiField(
                  formControlName: 'uf',
                  labelText: 'uf'.tr(),
                  hintText: 'uf'.tr(),
                  type: TextfieldType.text,
                ),
                const SizedBox(height: 16),
              ],
            );
          })
        ],
      ),
    );
  }
}
