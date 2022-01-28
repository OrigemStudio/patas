// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../patas_exports.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = Modular.get<AuthCubit>();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Base'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () => cubit.logout(
                      () => Modular.to.pushReplacementNamed(AppRoutes.auth)),
                  child: const Text('Sair')),
            )
          ],
        ),
      ),
    );
  }
}
