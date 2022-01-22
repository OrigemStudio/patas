import 'package:dartz/dartz.dart';

import '../../../../../patas_exports.dart';

abstract class IGetMyPetsUseCase {
  Future<Either<Failure, MyPetsEntity>> call({required String tutorId});
}

class GetMyPetsUseCaseImpl extends IGetMyPetsUseCase {
  final IGetMyPetsRepository _repository;

  GetMyPetsUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, MyPetsEntity>> call({required String tutorId}) async =>
      _repository.call(tutorId: tutorId);
}
