import 'package:flutter/foundation.dart';
import '../../../../../patas_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<S> extends Cubit<IBaseState<S>> {
  BaseCubit(initialState) : super(initialState);

  void setLoading() {
    emit(LoadingState<S>(state.value));
  }

  void setError(Failure error) {
    emit(ErrorState<S>(state.value, error: error));
  }

  void setEmpty() {
    emit(EmptyState<S>(state.value));
  }

  void setSuccess(S value) {
    emit(SuccessState<S>(value));
  }

  @override
  void onChange(Change<IBaseState<S>> change) {
    super.onChange(change);
    if (kDebugMode) {
      print(change);
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      print('$error, $stackTrace');
    }
    super.onError(error, stackTrace);
  }
}
