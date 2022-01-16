import 'package:equatable/equatable.dart';
import 'package:patas/patas_exports.dart';

abstract class IBaseState<S> implements Equatable {
  final S value;
  IBaseState(this.value);
  @override
  List<Object?> get props => throw UnimplementedError();
  @override
  bool? get stringify => throw UnimplementedError();
}

class InitState<S> extends IBaseState<S> {
  InitState(value) : super(value);

  @override
  List<Object?> get props => [value];
  @override
  bool? get stringify => true;
}

class LoadingState<S> extends IBaseState<S> {
  LoadingState(value) : super(value);
}

class EmptyState<S> extends IBaseState<S> {
  EmptyState(value) : super(value);
}

class ErrorState<S> extends IBaseState<S> {
  final Failure error;

  ErrorState(value, {required this.error}) : super(value);

  @override
  List<Object?> get props => [error];
  @override
  bool? get stringify => true;
}

class SuccessState<S> extends IBaseState<S> {
  SuccessState(value) : super(value);

  @override
  List<Object?> get props => [value];
  @override
  bool? get stringify => true;
}
