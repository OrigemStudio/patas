import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

abstract class IAuthUseCase {
  Future<Either<Failure, AuthorizedEntity>> call({required AuthEntity entity});
}

class AuthUseCase extends IAuthUseCase {
  final IAuthRepository _repository;

  AuthUseCase(this._repository);
  @override
  Future<Either<Failure, AuthorizedEntity>> call(
          {required AuthEntity entity}) async =>
      await _repository.call(entity: entity);
}
