import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../patas_exports.dart';

class PetModule extends Module {
  PetModule({Key? key}) : super();

  @override
  List<Bind> get binds => [
        //datasources
        Bind.lazySingleton<IAddPetDatasource>(
            (i) => AddPetDatasouceImpl(i.get())),
        Bind.lazySingleton<IDeletePetDatasource>(
            (i) => DeletePetDatasouceImpl(i.get())),
        Bind.lazySingleton<IGetPetDatasource>(
            (i) => GetPetDatasouceImpl(i.get())),
        Bind.lazySingleton<IUpdatePetDatasource>(
            (i) => UpdatePetDatasouceImpl(i.get())),
        Bind.lazySingleton<IUpdatePhotosDatasource>(
            (i) => UpdatePhotosDatasouceImpl(i.get())),
        //repositories
        Bind.lazySingleton<IAddPetRepository>(
            (i) => AddPetRepositoryImpl(i.get())),
        Bind.lazySingleton<IDeletePetRepository>(
            (i) => DeletePetRepositoryImpl(i.get())),
        Bind.lazySingleton<IGetPetRepository>(
            (i) => GetPetRepositoryImpl(i.get())),
        Bind.lazySingleton<IUpdatePetRepository>(
            (i) => UpdatePetRepositoryImpl(i.get())),
        Bind.lazySingleton<IUpdatePhotosRepository>(
            (i) => UpdatePhotosRepositoryImpl(i.get())),
        //use_cases
        Bind.lazySingleton<IAddPetUseCase>((i) => AddPetUseCaseImpl(i.get())),
        Bind.lazySingleton<IDeletePetUseCase>(
            (i) => DeletePetUseCaseImpl(i.get())),
        Bind.lazySingleton<IGetPetUseCase>((i) => GetPetUseCaseImpl(i.get())),
        Bind.lazySingleton<IUpdatePetUseCase>(
            (i) => UpdatePetUseCaseImpl(i.get())),
        Bind.lazySingleton<IUpdatePhotosUseCase>(
            (i) => UpdatePhotosUseCaseImpl(i.get())),
        //cubit
        Bind.lazySingleton((i) => PetCubit(i.get(), i.get(), i.get(), i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('${AppRoutes.root}:id',
            child: (context, args) => PetPage(
                  petId: args.params['id'],
                )),
        ChildRoute(AppRoutes.health, child: (context, args) => HealthModule()),
      ];
}
