import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../patas_exports.dart';

class RegisterPage extends SmartView<RegisterCubit> {
  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const Logo(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ReactiveForm(
                        formGroup: cubit.form,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiField(
                              field: 'email',
                              label: 'E-mail',
                              prefix:
                                  SvgPicture.asset(ThemeService.icons.email),
                            ),
                            UiField(
                              field: 'password',
                              label: 'Senha',
                              prefix:
                                  SvgPicture.asset(ThemeService.icons.password),
                              suffix: SvgPicture.asset(ThemeService.icons.eye),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            AuthButton(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
