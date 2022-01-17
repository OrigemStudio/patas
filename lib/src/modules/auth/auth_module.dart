import 'package:flutter_modular/flutter_modular.dart';
import '../../../patas_exports.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [Bind.factory((i) => SplashCubit())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.splash,
            child: (context, args) => const SplashPage()),
      ];
}
