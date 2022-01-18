import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patas/patas_exports.dart';

class SmartListener<B extends StateStreamable<ISmartState<S>>, S>
    extends StatelessWidget {
  final B? bloc;
  final Widget child;
  final BlocListenerCondition<ISmartState<S>>? listenWhen;
  final BlocWidgetListener<S>? onValue;
  final void Function(BuildContext context, Failure error)? onError;
  final void Function(BuildContext context)? onLoading;
  final void Function(BuildContext context)? onEmpty;
  const SmartListener(
      {Key? key,
      required,
      required this.bloc,
      required this.child,
      this.listenWhen,
      this.onValue,
      this.onError,
      this.onLoading,
      this.onEmpty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, ISmartState<S>>(
      bloc: bloc,
      listenWhen: listenWhen,
      listener: (context, state) {
        if (state is SuccessState) {
          if (onValue != null) {
            onValue!(context, state.value);
          }
        } else if (state is ErrorState) {
          if (onError != null) {
            onError!(context, (state as ErrorState).error);
          }
        } else if (state is LoadingState) {
          if (onLoading != null) {
            onLoading!(context);
          }
        } else {
          if (onLoading != null) {
            onEmpty!(context);
          }
        }
      },
      child: child,
    );
  }
}
