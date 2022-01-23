import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../patas_exports.dart';

class LostsModule extends WidgetModule {
  LostsModule({Key? key}) : super(key: key);

  @override
  List<Bind> get binds => [
        Bind.lazySingleton<IUpdateLostDatasource>(
            (i) => UpdateLostDatasouceImpl(i.get())),
        Bind.lazySingleton<IUpdateLostRepository>(
            (i) => UpdateLostRepositoryImpl(i.get())),
        Bind.lazySingleton<IUpdateLostUseCase>(
            (i) => UpdateLostUseCaseImpl(i.get())),
        Bind.lazySingleton<IGetLostsDatasource>(
            (i) => GetLostsDatasouceImpl(i.get())),
        Bind.lazySingleton<IGetLostsRepository>(
            (i) => GetLostsRepositoryImpl(i.get())),
        Bind.lazySingleton<IGetLostsUseCase>(
            (i) => GetLostsUseCaseImpl(i.get())),
        Bind.lazySingleton((i) => LostCubit(i.get(), i.get())..init()),
      ];

  @override
  Widget get view => const LostPage();
}
