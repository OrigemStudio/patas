import 'package:flutter_modular/flutter_modular.dart';
import '../../../../patas_exports.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        //auth
        Bind.lazySingleton<IAuthDatasouce>(
            (i) => AuthDatasourceImpl(i.get(), i.get())),
        Bind.lazySingleton<IAuthRepository>((i) => AuthRepositoryImpl(i.get())),
        Bind.lazySingleton<IAuthUseCase>((i) => AuthUseCase(i.get())),
        Bind.lazySingleton<ILogoutUseCase>((i) => LogoutUseCase(i.get())),
        Bind.factory((i) => SplashCubit(i.get())..init()),
        Bind.lazySingleton((i) => AuthForm()),
        Bind.lazySingleton((i) => AuthCubit(i.get(), i.get(), i.get())),

        //register
        Bind.lazySingleton<IRegisterDatasouce>(
            (i) => RegisterDatasourceImpl(i.get(), i.get())),
        Bind.lazySingleton<IRegisterRepository>(
            (i) => RegisterRepositoryImpl(i.get())),
        Bind.lazySingleton<IRegisterAuthUseCase>(
            (i) => RegisterAuthUseCase(i.get())),
        Bind.lazySingleton<IRegisterDbUseCase>(
            (i) => RegisterDbUseCase(i.get())),
        Bind.lazySingleton((i) => AddressForm()),
        Bind.lazySingleton((i) => RegisterForm(i.get())),
        Bind.lazySingleton((i) => RegisterCubit(i.get(), i.get(), i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.splash,
            child: (context, args) => const SplashPage()),
        ChildRoute(AppRoutes.auth, child: (context, args) => AuthPage()),
        ChildRoute(AppRoutes.register,
            child: (context, args) => RegisterPage()),
        ChildRoute(AppRoutes.registerAddress,
            child: (context, args) => AddressPage(
                  button: args.params['button'],
                  formGroup: args.params['formGroup'],
                )),
        ChildRoute(AppRoutes.resetPassword,
            child: (context, args) => const ResetPasswordPage()),
        ModuleRoute(AppRoutes.home, module: HomeModule()),
      ];
}
