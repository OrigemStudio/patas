import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patas/patas_exports.dart';

class BaseListener<B extends StateStreamable<IBaseState<S>>, S>
    extends StatelessWidget {
  final BlocWidgetListener<S>? onValue;
  final void Function(BuildContext context, Failure error)? onError;
  final void Function(BuildContext context)? onLoading;
  final void Function(BuildContext context)? onEmpty;
  final B? bloc;
  final Widget child;
  const BaseListener(
      {Key? key,
      required,
      this.onValue,
      required this.bloc,
      required this.child,
      this.onError,
      this.onLoading,
      this.onEmpty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, IBaseState<S>>(
      bloc: bloc,
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
