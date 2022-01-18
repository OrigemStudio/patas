import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/patas_exports.dart';
import 'package:patas/src/modules/home/presenter/cubit/home_cubit.dart';

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
