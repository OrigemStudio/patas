import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IGetAdoptionsUseCase {
  Future<Either<Failure, AdoptionEntity>> call({required String tutorId});
}

class GetAdoptionsUseCaseImpl extends IGetAdoptionsUseCase {
  final IGetAdoptionsRepository _repository;

  GetAdoptionsUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, AdoptionEntity>> call(
          {required String tutorId}) async =>
      _repository.call(tutorId: tutorId);
}
