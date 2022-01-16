import 'package:flutter_modular/flutter_modular.dart';
import '../../patas_exports.dart';

class AppModule extends Module {
  final Environment env;

  AppModule({required this.env});
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: AuthModule()),
      ];
}
