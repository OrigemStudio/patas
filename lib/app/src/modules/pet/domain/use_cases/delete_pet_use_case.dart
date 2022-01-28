import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IDeletePetUseCase {
  Future<Either<Failure, SuccessResponse>> call({required String petId});
}

class DeletePetUseCaseImpl extends IDeletePetUseCase {
  final IDeletePetRepository _repository;

  DeletePetUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, SuccessResponse>> call(
          {required String petId}) async =>
      _repository.call(petId: petId);
}
