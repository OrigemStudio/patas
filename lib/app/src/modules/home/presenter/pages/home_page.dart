import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/app/_exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Modular.to.navigate(AppRoutes.adoption),
                child: const Text('Adoption')),
            ElevatedButton(
                onPressed: () => Modular.to.navigate(AppRoutes.complaint),
                child: const Text('Complaint')),
            ElevatedButton(
                onPressed: () => Modular.to.navigate(AppRoutes.find),
                child: const Text('Find')),
            ElevatedButton(
                onPressed: () => Modular.to.navigate(AppRoutes.lost),
                child: const Text('Lost')),
            MyPetsButton(),
            ElevatedButton(
                onPressed: () => context.read<AuthCubit>().logout(() => Modular
                    .to
                    .pushNamedAndRemoveUntil(AppRoutes.auth, (p0) => false)),
                child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
