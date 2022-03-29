import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

abstract class IRegisterDbUseCase {
  Future<Either<Failure, TutorEntity>> call({required RegisterEntity entity});
}

class RegisterDbUseCase extends IRegisterDbUseCase {
  final IRegisterRepository _repository;

  RegisterDbUseCase(this._repository);
  @override
  Future<Either<Failure, TutorEntity>> call(
          {required RegisterEntity entity}) async =>
      await _repository.registerDb(entity: entity);
}
