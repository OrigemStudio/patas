import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:patas/firebase_options.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'patas_exports.dart';

void mainApp(Environment env) async {
  await EasyLocalization.ensureInitialized();
  FlutterServicesBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  HydratedBlocOverrides.runZoned(
      () => runApp(EasyLocalization(
              supportedLocales: const [
                Locale('en', 'US'),
                Locale('pt', 'BR'),
                Locale('pt', 'PT'),
                Locale('es', 'ES')
              ],
              path: 'assets/translations',
              fallbackLocale: const Locale('en', 'US'),
              child:
                  ModularApp(module: AppModule(env: env), child: const App()))),
      storage: storage,
      blocObserver: MyBlocObserver());
}
