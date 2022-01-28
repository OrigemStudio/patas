import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../patas_exports.dart';

class AdoptionsModule extends WidgetModule {
  AdoptionsModule({Key? key}) : super(key: key);

  @override
  List<Bind> get binds => [
        Bind.lazySingleton<IUpdateAdoptionDatasource>(
            (i) => UpdateAdoptionDatasouceImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionRepository>(
            (i) => UpdateAdoptionRepositoryImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionUseCase>(
            (i) => UpdateAdoptionUseCaseImpl(i.get())),
        Bind.lazySingleton<IGetAdoptionsDatasource>(
            (i) => GetAdoptionsDatasouceImpl(i.get())),
        Bind.lazySingleton<IGetAdoptionsRepository>(
            (i) => GetAdoptionsRepositoryImpl(i.get())),
        Bind.lazySingleton<IGetAdoptionsUseCase>(
            (i) => GetAdoptionsUseCaseImpl(i.get())),
        Bind.lazySingleton((i) => AdoptionCubit(i.get(), i.get())..init()),
      ];

  @override
  Widget get view => const AdoptionPage();
}
