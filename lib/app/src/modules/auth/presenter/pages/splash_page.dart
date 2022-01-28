import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../patas_exports.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: Modular.get<SplashCubit>(),
        listener: (_, state) {
          if (state == SplashState.authorized) {
            Modular.to.pushReplacementNamed(AppRoutes.home);
          }
          if (state == SplashState.unauthorized) {
            Modular.to.pushReplacementNamed(AppRoutes.auth);
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // const Logo(),
                FadingText(
                  'Carregando...',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )),
                ),
              ],
            ),
          ),
        ));
  }
}
