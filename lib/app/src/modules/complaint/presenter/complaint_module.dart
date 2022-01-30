import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../patas_exports.dart';

class ComplaintModule extends WidgetModule {
  ComplaintModule({Key? key}) : super(key: key);

  @override
  List<Bind> get binds => [
        /*   Bind.lazySingleton<IUpdateAdoptionDatasource>(
            (i) => UpdateAdoptionDatasouceImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionRepository>(
            (i) => UpdateAdoptionRepositoryImpl(i.get())),
        Bind.lazySingleton<IUpdateAdoptionUseCase>(
            (i) => UpdateAdoptionUseCaseImpl(i.get())),
        Bind.lazySingleton<IGetComplaintDatasource>(
            (i) => GetComplaintDatasouceImpl(i.get())),
        Bind.lazySingleton<IGetComplaintRepository>(
            (i) => GetComplaintRepositoryImpl(i.get())),
        Bind.lazySingleton<IGetComplaintUseCase>(
            (i) => GetComplaintUseCaseImpl(i.get())),
        Bind.lazySingleton((i) => AdoptionCubit(i.get(), i.get())..init()),*/
      ];

  @override
  Widget get view => const ComplaintPage();
}
