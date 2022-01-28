import 'package:equatable/equatable.dart';
import 'package:patas/patas_exports.dart';

abstract class ISmartState<S> implements Equatable {
  final S value;
  final bool onSubmit;
  ISmartState(this.value, {this.onSubmit = false});
  @override
  List<Object?> get props => throw UnimplementedError();
  @override
  bool? get stringify => throw UnimplementedError();
}

class InitState<S> extends ISmartState<S> {
  InitState(value, {onSubmit = false}) : super(value, onSubmit: onSubmit);

  @override
  List<Object?> get props => [value];
  @override
  bool? get stringify => true;
}

class LoadingState<S> extends ISmartState<S> {
  LoadingState(value, {onSubmit}) : super(value, onSubmit: onSubmit);
}

class EmptyState<S> extends ISmartState<S> {
  EmptyState(value, {onSubmit}) : super(value, onSubmit: onSubmit);
}

class ErrorState<S> extends ISmartState<S> {
  final Failure error;

  ErrorState(value, {required this.error, onSubmit})
      : super(value, onSubmit: onSubmit);

  @override
  List<Object?> get props => [error];
  @override
  bool? get stringify => true;
}

class SuccessState<S> extends ISmartState<S> {
  SuccessState(value, {onSubmit}) : super(value, onSubmit: onSubmit);

  @override
  List<Object?> get props => [value];
  @override
  bool? get stringify => true;
}
