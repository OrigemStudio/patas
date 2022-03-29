import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

abstract class IRegisterAuthUseCase {
  Future<Either<Failure, AuthorizedEntity>> call(
      {required RegisterEntity entity});
}

class RegisterAuthUseCase extends IRegisterAuthUseCase {
  final IRegisterRepository _repository;

  RegisterAuthUseCase(this._repository);
  @override
  Future<Either<Failure, AuthorizedEntity>> call(
          {required RegisterEntity entity}) async =>
      await _repository.registerAuth(entity: entity);
}
