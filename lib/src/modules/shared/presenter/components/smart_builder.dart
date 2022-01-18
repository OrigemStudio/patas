import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patas/patas_exports.dart';

class SmartBuilder<B extends StateStreamable<ISmartState<S>>, S>
    extends StatelessWidget {
  final B bloc;
  final BlocBuilderCondition<ISmartState<S>>? buildWhen;
  final Widget Function(BuildContext context, S state) onValue;
  final Widget Function(BuildContext context, Failure error)? onError;
  final Widget Function(BuildContext context)? onLoading;
  final Widget Function(BuildContext context)? onEmpty;
  const SmartBuilder(
      {Key? key,
      required this.bloc,
      required this.onValue,
      this.buildWhen,
      this.onError,
      this.onLoading,
      this.onEmpty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, ISmartState<S>>(
        bloc: bloc,
        buildWhen: buildWhen,
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
