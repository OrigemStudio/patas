import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../patas_exports.dart';

class HealthModule extends WidgetModule {
  HealthModule({Key? key}) : super(key: key);

  @override
  List<Bind> get binds => [
        /*Bind.lazySingleton<IUpdateAdoptionDatasource>(
            (i) => UpdateAdoptionDatasouceImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionRepository>(
            (i) => UpdateAdoptionRepositoryImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionUseCase>(
            (i) => UpdateAdoptionUseCaseImpl(i.get())),
        Bind.lazySingleton<IGetHealthDatasource>(
            (i) => GetHealthDatasouceImpl(i.get())),
        Bind.lazySingleton<IGetHealthRepository>(
            (i) => GetHealthRepositoryImpl(i.get())),
        Bind.lazySingleton<IGetHealthUseCase>(
            (i) => GetHealthUseCaseImpl(i.get())),
        Bind.lazySingleton((i) => AdoptionCubit(i.get(), i.get())..init()),*/
      ];

  @override
  Widget get view => const HealthPage();
}
