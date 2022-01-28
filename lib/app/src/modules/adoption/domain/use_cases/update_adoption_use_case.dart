import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IUpdateAdoptionUseCase {
  Future<Either<Failure, SuccessResponse>> call(
      {required UpdateAdoptionEntity updateAdoptionEntity});
}

class UpdateAdoptionUseCaseImpl extends IUpdateAdoptionUseCase {
  final IUpdateAdoptionRepository _repository;

  UpdateAdoptionUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, SuccessResponse>> call(
          {required UpdateAdoptionEntity updateAdoptionEntity}) async =>
      _repository.call(updateAdoptionEntity: updateAdoptionEntity);
}
