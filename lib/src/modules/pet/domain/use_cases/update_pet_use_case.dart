import 'package:dartz/dartz.dart';
import '../../../../../patas_exports.dart';

abstract class IUpdatePetUseCase {
  Future<Either<Failure, SuccessResponse>> call({required PetEntity petEntity});
}

class UpdatePetUseCaseImpl extends IUpdatePetUseCase {
  final IUpdatePetRepository _repository;

  UpdatePetUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, SuccessResponse>> call(
          {required PetEntity petEntity}) async =>
      _repository.call(petEntity: petEntity);
}
