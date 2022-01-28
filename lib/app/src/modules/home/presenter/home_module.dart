import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../patas_exports.dart';
import 'cubit/home_cubit.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => HomeCubit()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
