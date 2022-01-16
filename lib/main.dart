import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'patas_exports.dart';

void mainApp(Environment env) {
  runApp(ModularApp(module: AppModule(env: env), child: App()));
}
