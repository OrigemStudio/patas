import 'package:dartz/dartz.dart';
import '../../../../../patas_exports.dart';

abstract class IGetPetUseCase {
  Future<Either<Failure, PetEntity>> call({required String petId});
}

class GetPetUseCaseImpl extends IGetPetUseCase {
  final IGetPetRepository _repository;

  GetPetUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, PetEntity>> call({required String petId}) async =>
      _repository.call(petId: petId);
}
