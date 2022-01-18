import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../patas_exports.dart';

class SmartConsumer<B extends StateStreamable<ISmartState<S>>, S>
    extends StatelessWidget {
  final B bloc;
  final BlocBuilderCondition<ISmartState<S>>? buildWhen;
  final BlocListenerCondition<ISmartState<S>>? listenWhen;
  final Widget Function(BuildContext context, S state) buildValue;
  final Widget Function(BuildContext context, Failure error)? buildError;
  final Widget Function(BuildContext context)? buildLoading;
  final Widget Function(BuildContext context)? buildEmpty;
  final BlocWidgetListener<S>? listenValue;
  final void Function(BuildContext context, Failure error)? listenError;
  final void Function(BuildContext context)? listenLoading;
  final void Function(BuildContext context)? listenEmpty;
  const SmartConsumer(
      {Key? key,
      required this.bloc,
      required this.buildValue,
      this.buildWhen,
      this.listenWhen,
      this.buildError,
      this.buildLoading,
      this.buildEmpty,
      this.listenValue,
      this.listenError,
      this.listenLoading,
      this.listenEmpty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, ISmartState<S>>(
        listenWhen: listenWhen,
        listener: (context, state) {
          if (state is SuccessState) {
            if (listenValue != null) {
              listenValue!(context, state.value);
            }
          } else if (state is ErrorState) {
            if (listenError != null) {
              listenError!(context, (state as ErrorState).error);
            }
          } else if (state is LoadingState) {
            if (listenLoading != null) {
              listenLoading!(context);
            }
          } else {
            if (listenLoading != null) {
              listenLoading!(context);
            }
          }
        },
        buildWhen: buildWhen,
        builder: (context, state) {
          if (state is SuccessState) {
            return buildValue(context, state.value);
          } else if (state is ErrorState) {
            return buildError != null
                ? buildError!(context, (state as ErrorState).error)
                : buildValue(context, state.value);
          } else if (state is LoadingState) {
            return buildLoading != null
                ? buildLoading!(context)
                : buildValue(context, state.value);
          } else if (state is InitState) {
            return const SizedBox();
          } else {
            return buildValue(context, state.value);
          }
        });
  }
}
