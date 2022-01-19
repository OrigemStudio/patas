// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../patas_exports.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<AuthCubit>();
    return SmartConsumer<AuthCubit, AuthorizeEntity>(
        bloc: cubit,
        listenValue: (context, value) {
          Modular.to.pushReplacementNamed(AppRoutes.home);
        },
        listenError: (context, error) {
          print('error');
        },
        buildLoading: (_) => const Center(child: CircularProgressIndicator()),
        buildValue: (_, value, onSubmit) => MaterialButton(
            height: 46,
            minWidth:
                MediaQuery.of(context).size.width * (onSubmit ? 0.64 : 0.8),
            color: Colors.black,
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
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(12),
                    bottomRight: Radius.circular(!onSubmit ? 0 : 12))),
            onPressed: () => cubit.auth()));
  }
}
