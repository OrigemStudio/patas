import 'package:flutter_modular/flutter_modular.dart';

import '../../../../patas_exports.dart';

class MyPetsModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.lazySingleton((i) => MyPetsForm()),
        Bind.lazySingleton<IGetMyPetsDatasource>(
            (i) => GetMyPetsDatasouceImpl(i.get())),
        Bind.lazySingleton<IGetMyPetsRepository>(
            (i) => GetMyPetsRepositoryImpl(i.get())),
        Bind.lazySingleton<IGetMyPetsUseCase>(
            (i) => GetMyPetsUseCaseImpl(i.get())),
        Bind.lazySingleton((i) => MyPetsCubit(i.get())..init()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.root,
            child: (context, args) => const MyPetsPage()),
      ];
}
