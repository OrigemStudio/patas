import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../patas_exports.dart';

enum SplashState { init, authorized, unauthorized, error }

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this._storage) : super(SplashState.init);

  final IStorageService _storage;

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 3), () {
      if (_storage.getToken() == null && _storage.getRefreshToken() == null) {
        emit(SplashState.unauthorized);
      } else {
        emit(SplashState.authorized);
      }
    });
  }
}
