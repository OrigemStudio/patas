// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../patas_exports.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<AuthCubit>();
    return SmartConsumer<AuthCubit, AuthorizedEntity>(
        bloc: cubit,
        listenValue: (context, value) {
          Modular.to.pushReplacementNamed(AppRoutes.home);
        },
        listenError: (context, error) {
          debugPrint('error');
        },
        buildLoading: (_) => const Center(child: CircularProgressIndicator()),
        buildValue: (_, value, onSubmit) => Padding(
              padding: const EdgeInsets.all(18.0),
              child: MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  color: ThemeService.colors.secondary,
                  child: Stack(
                    children: [
                      Visibility(
                        visible: onSubmit,
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: !onSubmit,
                        child: Text(
                          'Entrar',
                          style: ThemeService.styles.button(),
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  onPressed: () => cubit.auth()),
            ));
  }
}
