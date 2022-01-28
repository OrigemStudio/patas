import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IAddPetUseCase {
  Future<Either<Failure, SuccessResponse>> call({required PetEntity petEntity});
}

class AddPetUseCaseImpl extends IAddPetUseCase {
  final IAddPetRepository _repository;

  AddPetUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, SuccessResponse>> call(
          {required PetEntity petEntity}) async =>
      _repository.call(petEntity: petEntity);
}
