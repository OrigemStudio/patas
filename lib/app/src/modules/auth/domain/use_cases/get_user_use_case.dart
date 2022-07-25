import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

abstract class IGetUserUseCase {
  Future<Either<Failure, TutorEntity>> call({required AuthorizedEntity entity});
}

class GetUserUseCase extends IGetUserUseCase {
  final IAuthRepository _repository;

  GetUserUseCase(this._repository);
  @override
  Future<Either<Failure, TutorEntity>> call(
          {required AuthorizedEntity entity}) async =>
      await _repository.getUser(entity: entity);
}
