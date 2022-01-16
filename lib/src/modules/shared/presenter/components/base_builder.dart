import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patas/patas_exports.dart';

class BaseBuilder<B extends StateStreamable<IBaseState<S>>, S>
    extends StatelessWidget {
  final Widget Function(BuildContext context, S state) onValue;
  final Widget Function(BuildContext context, Failure error)? onError;
  final Widget Function(BuildContext context)? onLoading;
  final Widget Function(BuildContext context)? onEmpty;
  final B bloc;
  const BaseBuilder(
      {Key? key,
      required this.onValue,
      this.onError,
      this.onLoading,
      this.onEmpty,
      required this.bloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, IBaseState<S>>(
        bloc: bloc,
        builder: (context, state) {
          if (state is SuccessState) {
            return onValue(context, state.value);
          } else if (state is ErrorState) {
            return onError != null
                ? onError!(context, (state as ErrorState).error)
                : onValue(context, state.value);
          } else if (state is LoadingState) {
            return onLoading != null
                ? onLoading!(context)
                : onValue(context, state.value);
          } else if (state is InitState) {
            return const SizedBox();
          } else {
            return onValue(context, state.value);
          }
        });
  }
}
