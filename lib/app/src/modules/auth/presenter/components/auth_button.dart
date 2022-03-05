// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../patas_exports.dart';

class AuthButton extends SmartView<AuthCubit> {
  AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  color: Theme.of(context).colorScheme.secondary,
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
                          style: Theme.of(context).textTheme.button,
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
