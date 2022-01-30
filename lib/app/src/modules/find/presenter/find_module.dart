import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../patas_exports.dart';

class FindModule extends Module {
  @override
  List<Bind> get binds => [
        /*Bind.lazySingleton<IUpdateAdoptionDatasource>(
            (i) => UpdateAdoptionDatasouceImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionRepository>(
            (i) => UpdateAdoptionRepositoryImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionUseCase>(
            (i) => UpdateAdoptionUseCaseImpl(i.get())),
        Bind.lazySingleton<IGetFindDatasource>(
            (i) => GetFindDatasouceImpl(i.get())),
        Bind.lazySingleton<IGetFindRepository>(
            (i) => GetFindRepositoryImpl(i.get())),
        Bind.lazySingleton<IGetFindUseCase>(
            (i) => GetFindUseCaseImpl(i.get())),
        */
        Bind.lazySingleton((i) => FindCubit()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.root, child: (context, args) => const FindPage()),
        ModuleRoute(AppRoutes.pet, module: PetModule()),
      ];
}
