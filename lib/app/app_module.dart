import 'package:flutter_modular/flutter_modular.dart';
import '../../patas_exports.dart';

class AppModule extends Module {
  final Environment env;

  AppModule({required this.env});
  @override
  List<Bind> get binds => [
        Bind.singleton<IStorageService>((i) => StorageService()),
        Bind.singleton<IConfigsService>((i) => ConfigsService(env: env)),
        Bind.singleton<IClientService>((i) => HasuraService(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AppRoutes.splash, module: AuthModule()),
      ];
}
