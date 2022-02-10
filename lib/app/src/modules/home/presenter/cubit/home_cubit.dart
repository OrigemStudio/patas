import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../../patas_exports.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final SplashCubit _splashCubit;
  HomeCubit(this._splashCubit) : super(HomeInitial());

  void verifyAuth() => _splashCubit.init();
}
