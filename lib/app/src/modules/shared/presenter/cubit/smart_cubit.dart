import 'package:flutter/foundation.dart';
import '../../../../../../patas_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SmartCubit<S> extends Cubit<ISmartState<S>> {
  SmartCubit(initialState) : super(initialState);

  void setInit({S? value, bool? onSubmit}) {
    emit(InitState<S>(value ?? state.value,
        onSubmit: onSubmit ?? state.onSubmit));
  }

  void setLoading({bool? onSubmit}) {
    emit(LoadingState<S>(state.value, onSubmit: onSubmit ?? true));
  }

  void setError(Failure error, {bool? onSubmit}) {
    emit(ErrorState<S>(state.value, error: error, onSubmit: onSubmit ?? false));
  }

  void setEmpty({bool? onSubmit}) {
    emit(EmptyState<S>(state.value, onSubmit: onSubmit ?? false));
  }

  void setSuccess({S? value, bool? onSubmit}) {
    emit(SuccessState<S>(value ?? state.value, onSubmit: onSubmit ?? false));
  }

  void updateValue(S value, {bool? onSubmit}) {
    emit(SuccessState<S>(value, onSubmit: onSubmit ?? state.onSubmit));
  }

  void setSubmit(bool onSubmit) {
    if (state is SuccessState<S>) {
      emit(SuccessState<S>(state.value, onSubmit: onSubmit));
    } else if (state is InitState<S>) {
      emit(InitState<S>(state.value, onSubmit: onSubmit));
    }
  }

  @override
  void onChange(Change<ISmartState<S>> change) {
    super.onChange(change);
    if (kDebugMode) {
      print(change);
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      debugPrint('$error, $stackTrace');
    }
    super.onError(error, stackTrace);
  }
}
