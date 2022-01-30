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
        ChildRoute(AppRoutes.root, child: (context, args) => const HomePage()),
        ModuleRoute(AppRoutes.adoption, module: AdoptionsModule()),
        ChildRoute(AppRoutes.complaint,
            child: (context, args) => ComplaintModule()),
        ModuleRoute(AppRoutes.find, module: FindModule()),
        ModuleRoute(AppRoutes.lost, module: LostsModule()),
        ModuleRoute(AppRoutes.myPets, module: MyPetsModule()),
        ModuleRoute(AppRoutes.pet, module: PetModule()),
      ];
}
