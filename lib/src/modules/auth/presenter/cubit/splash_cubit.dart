import '../../../../../patas_exports.dart';

class SplashCubit extends BaseCubit<bool> {
  SplashCubit() : super(InitState<bool>(true));

  void onInit() {
    setLoading();
  }

  void change() {
    setSuccess(!state.value);
  }

  void error() {
    setError(InternalError('message', '200'));
  }
}
