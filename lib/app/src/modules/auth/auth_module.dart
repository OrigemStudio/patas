import 'package:flutter_modular/flutter_modular.dart';
import '../../../../patas_exports.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => SplashCubit(i.get())..init()),
        Bind.lazySingleton((i) => AuthForm()),
        Bind.lazySingleton((i) => AuthCubit(i.get(), i.get(), i.get())),
        Bind.lazySingleton<IAuthDatasouce>((i) => AuthDatasourceImpl(i.get())),
        Bind.lazySingleton<IAuthRepository>((i) => AuthRepositoryImpl(i.get())),
        Bind.lazySingleton<IAuthUseCase>((i) => AuthUseCase(i.get())),
        Bind.lazySingleton<ILogoutUseCase>((i) => LogoutUseCase(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.splash,
            child: (context, args) => const SplashPage()),
        ChildRoute(AppRoutes.auth, child: (context, args) => AuthPage()),
        ChildRoute(AppRoutes.register,
            child: (context, args) => RegisterPage()),
        ChildRoute(AppRoutes.resetPassword,
            child: (context, args) => const ResetPasswordPage()),
        ModuleRoute(AppRoutes.home, module: HomeModule()),
      ];
}
