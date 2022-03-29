import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/app/_exports.dart';
import 'package:patas/app/src/modules/home/presenter/cubit/home_cubit.dart';

class MyPetsButton extends SmartView<SplashCubit> {
  MyPetsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeCubit = Modular.get<HomeCubit>();
    return BlocListener<SplashCubit, SplashState>(
      bloc: cubit,
      listener: (_, state) {
        if (state == SplashState.authorized) {
          Modular.to.pushReplacementNamed(AppRoutes.myPets);
        }
        if (state == SplashState.unauthorized) {
          // Modular.to.pushReplacementNamed(AppRoutes.auth);
        }
      },
      child: ElevatedButton(
          onPressed: () => homeCubit.verifyAuth(),
          child: const Text('My Pets')),
    );
  }
}
