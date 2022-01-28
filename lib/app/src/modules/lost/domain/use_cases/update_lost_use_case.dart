import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IUpdateLostUseCase {
  Future<Either<Failure, SuccessResponse>> call(
      {required UpdateLostEntity updateLostEntity});
}

class UpdateLostUseCaseImpl extends IUpdateLostUseCase {
  final IUpdateLostRepository _repository;

  UpdateLostUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, SuccessResponse>> call(
          {required UpdateLostEntity updateLostEntity}) async =>
      _repository.call(updateLostEntity: updateLostEntity);
}
